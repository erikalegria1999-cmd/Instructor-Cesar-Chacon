
function Tabla () {
return(
    <div className=" mt-5 ">
        <table className="table w-50 table-striped table-bordered">
        <thead className="table-danger">
                <tr>
                <th>Nombre</th>
                <th>Correo</th>
                <th> Fecha Nacimiento</th>
                </tr>
        </thead>
        <tbody>
                <tr>
                    <td>Maria</td>
                    <td>maria@gmail.com</td>
                    <td>20/10/1999</td>
                </tr>
                <tr>
                    <td>Juan </td>
                    <td>juan@gmail.com</td>
                    <td>15/01/2005</td>
                </tr>
                <tr>
                    <td>Juan </td>
                    <td>juan@gmail.com</td>
                    <td>15/01/2005</td>
                </tr>
        </tbody>
        </table>
        </div>
        )
}

export default Tabla