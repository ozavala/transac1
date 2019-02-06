module PagesHelper
  require 'prawn'


  def self.create_chart_of_accounts_html
    chart_file = File.new("app/views/reports/gl_accounts.html.erb", "w")
    glacs = GlAccount.order(:acc_code).all

      chart_file.puts(
        '<div>
          <h1>General Ledger Chart of Accounts</h1>
        </div>')
        chart_file.puts(
          "<table>
            <tr>
              <th>ID</th>
              <th>Code</th>
              <th>Name</th>
              <th>Account Type</th>
              <th>Description</th>
            </tr>"
        )
        glacs.each do |gla|
          chart_file.puts(
          "<tr>
             <td>#{gla.id}</td>
             <td>#{gla.acc_code}</td>
             <td>#{gla.name}</td>
             <td>#{gla.account_type_id}</td>
             <td>#{gla.description}</td>
          </tr>")
        end
    chart_file.puts('</table>')
    chart_file.close
  end

  



  def self.create_transactions_report
    trans_file = File.new("app/views/reports/account_transactions.html.erb", "w")
    trans = GlTransaction.order(:id).all
    detrans = TransactionDetail.order(:transaction_id)
      trans_file.puts(
        '<div>
        <h2> Transaciones Contables </h2>')
        trans.each do |tra|
          trans_file.puts(
            "<table>
              <tr>
                <th>ID</th>
                <th>Fecha Entrada</th>
                <th>Descripción</th>
                <th>Tipo de Trans.</th>
                <th>Hacia</th>
                <th>Desde</th>
              </tr>")
          trans_file.puts(
              "<tr>
                <td>#{tra.id}</td>
                <td>#{tra.entry_date}</td>
                <td>#{tra.description}</td>
                <td>#{tra.transaction_type_id}</td>
                <td>#{tra.to_party}</td>
                <td>#{tra.from_party}</td>
              </tr>
            </table>")
          detrans = TransactionDetail.where("gl_transaction_id = #{tra.id}")
          trans_file.puts(
            '<table>
              <h5>Detalle de Transacción</h5>')
              trans_file.puts(
               "<tr>
                 <th>ID</th>
                 <th>No. Sec</th>
                 <th>Cantidad</th>
                 <th>Clase</th>
                 <th>Parti</th>
                 <th>Cuenta </th>
                 <th>No. Trans.</th>
                 <th>Sec padre</th>
               </tr>")
          detrans.each do |det|
              trans_file.puts(
              "<tr>
                <td>#{det.id}</td>
                <td>#{det.detail_seq}</td>
                <td>#{det.amount}</td>
                <td>#{det.dbcr_flag}</td>
                <td>#{det.party_id}</td>
                <td>#{det.gl_account_id}</td>
                <td>#{det.parent_detail_seq}</td>
              </tr>")
          end
        trans_file.puts("</table><br>")
        end
        trans_file.puts("</div>")
    trans_file.close
  end

  def self.create_income_report
    cr_ins = TransactionDetail.where(dbcr_flag: 'Credit')
    db_ins = TransactionDetail.where(dbcr_flag: 'Debit')
    cr_sum = cr_ins.sum(:amount)
    db_sum = db_ins.sum(:amount)
    income_balance = cr_sum - db_sum

    income_file =File.new("app/views/reports/income_balance.html.erb" , "w")

    income_file.puts(
      "<h4>Balance de Ingresos vs Gastos </h4>
      <table>
      <th><h5>Créditos</h5></th>")
        cr_ins.each do |cr|
          ac_cr_name = GlAccount.find(cr.id).name
    income_file.puts(
        "<tr>
          <td> #{ac_cr_name} </td>
          <td> #{cr.amount}</td>
      </tr>"
    )
    end

    income_file.puts(
      "<th><h5>Débitos</h5></th>")
        db_ins.each do |db|
          ac_db_name = GlAccount.find(db.id).name
      income_file.puts(
      "<tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td> #{ac_db_name}</td>
          <td> #{db.amount}</td>
        </tr>"
    )
    end
    income_file.puts(
      "<tr>
        <td>Total Crédito</td>
        <td>#{cr_sum}</td>
        <td></td>
        <td></td>
        <td></td>
        <td>Total Débito</td>
        <td></td>
        <td>#{db_sum}</td>
        </tr>
        <tr>
        <td>Balance   =</td>
        <td>#{income_balance}</td>
        </tr>"
      )
    income_file.puts("</table>")
    income_file.puts(
      "<br><p>Crédito = #{cr_sum} - Débito = #{db_sum} = Balance = #{income_balance}</p>")
    income_file.close
  end

end
