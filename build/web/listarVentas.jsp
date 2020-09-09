
<%@page import="modelo.saco"%>
<%@page import="dao.sacoDao"%>
<%@page import="modelo.agricultor"%>
<%@page import="dao.agricultorDao"%>
<%@page import="modelo.venta"%>
<%@page import="dao.ventaDao"%>
<%@page import="modelo.campaña"%>
<%@page import="dao.campañaDao"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>El Marañon E.I.R.l</title>
        <!-- Favicon-->
        <link rel="icon" href="images/logo marañon.ico" type="image/x-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

        <!-- Bootstrap Core Css -->
        <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Waves Effect Css -->
        <link href="plugins/node-waves/waves.css" rel="stylesheet" />

        <!-- Animation Css -->
        <link href="plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- JQuery DataTable Css -->
        <link href="plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

        <!-- Custom Css -->
        <link href="css/style.css" rel="stylesheet">

        <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
        <link href="css/themes/all-themes.css" rel="stylesheet" />
        <!-- Bootstrap Select Css -->
        <link href="plugins/bootstrap-select/css/bootstrap-select.css" rel="stylesheet" />

    </head>

    <body class="theme-red">
        <!-- Page Loader -->
        <div class="page-loader-wrapper">
            <div class="loader">
                <div class="preloader">
                    <div class="spinner-layer pl-red">
                        <div class="circle-clipper left">
                            <div class="circle"></div>
                        </div>
                        <div class="circle-clipper right">
                            <div class="circle"></div>
                        </div>
                    </div>
                </div>
                <p>Cargando...</p>
            </div>
        </div>
        <!-- #END# Page Loader -->
        <!-- Overlay For Sidebars -->
        <div class="overlay"></div>
        <!-- #END# Overlay For Sidebars -->

        <!-- Top Bar -->
        <nav class="navbar">
            <div class="container-fluid" style="background-color:#0e7379">
                <div class="navbar-header">
                    <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                    <a href="javascript:void(0);" class="bars"></a>
                    <a class="navbar-brand" href=""><b>SISTEMA DE GESTIÓN</b> </a>
                    <a class="navbar-brand" style="font-size: 30px;color:#0e7379">------------------------------------</a>
                    <a class="navbar-brand" style="font-size: 30px;color:#ffffff "><b>Molino "El Marañon" E.I.R.L</b></a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">



                        <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- #Top Bar -->
        <section>
            <!-- Left Sidebar -->
            <aside id="leftsidebar" class="sidebar">

                <!-- Menu -->
                <div class="menu">
                    <ul class="list">
                        <li class="header">Menú</li>
                        <li>
                            <a href="inicio.jsp">
                                <i class="material-icons"></i>
                                <span>Inicio</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="javascript:void(0);"  class="menu-toggle">
                                <i class="material-icons"></i>
                                <span  style="color: #0e7379">Ventas</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="ventas.jsp" >
                                        <span>Registrar</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="listarVentas.jsp" >
                                        <span  style="color: #0e7379">Listar Ventas</span>
                                    </a>

                                </li>

                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0);"  class="menu-toggle">
                                <i class="material-icons"></i>
                                <span>Gastos</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="servicios.jsp" >
                                        <span>Proveedores</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="sueldos.jsp" >
                                        <span>Sueldos</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="compras.jsp" >
                                        <span>Compras y otros gastos</span>
                                    </a>

                                </li>

                            </ul>
                        </li>
                        <li>
                            <a href="listarAgricultores.jsp"  >
                                <i class="material-icons"></i>
                                <span>Agricultores</span>
                            </a>

                        </li>
                        <li>
                            <a href="listarAgricultorProduccion.jsp"  >
                                <i class="material-icons"></i>
                                <span>Producción</span>
                            </a>

                        </li>
                        <li>
                            <a href="trabajadores.jsp" >
                                <i class="material-icons"></i>
                                <span>Trabajadores</span>
                            </a>

                        </li>
                        <li>
                            <a href="proveedores.jsp" >
                                <i class="material-icons"></i>
                                <span>Proveedores</span>
                            </a>

                        </li>
                        <li>
                            <a href="javascript:void(0);"  class="menu-toggle">
                                <i class="material-icons"></i>
                                <span>Inventarios</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="inventarioArticulos.jsp" >
                                        <span>Materiales</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="inventarioSacos.jsp" >
                                        <span>Sacos</span>
                                    </a>

                                </li>


                            </ul>
                        </li>

                        <li class="header"></li>
                        <li>
                            <a href="ReportesDiarios.jsp">
                                <i class="material-icons col-red"></i>
                                <span>Reportes Diarios</span>
                            </a>
                        </li>
                        <li>
                            <a href="ReportesMensuales.jsp">
                                <i class="material-icons col-amber"></i>
                                <span>Reportes Mensuales</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- #Menu -->
                <!-- Footer -->
                <div class="legal">
                    <div class="copyright" style="color:#ffffff ">
                        &copy; 2019 - Sistema de Gestión - Molino
                    </div>
                    <div class="version" style="color:#ffffff "> 
                        <b>Version: </b> 1.0
                    </div>
                </div>
                <!-- #Footer -->
            </aside>
            <!-- #END# Left Sidebar -->
            <!-- Right Sidebar -->
            <aside id="rightsidebar" class="right-sidebar">
                <ul class="nav nav-tabs tab-nav-right" role="tablist">

                    <li role="presentation"><a href="#settings" data-toggle="tab">Kevin Alberca Cubas</a></li>
                </ul>
                <div class="tab-content">

                    <div role="tabpanel" class="tab-pane fade" id="settings">
                        <div class="demo-settings">

                            <ul class="setting-list">
                                <li>
                                    <span>Cerrar sesión</span>
                                    <div class="switch">
                                        <label><input type="checkbox" checked><span class="lever"></span></label>
                                    </div>
                                </li>

                            </ul>

                        </div>
                    </div>
                </div>
            </aside>
            <!-- #END# Right Sidebar -->
        </section>

        <section class="content">
            <div class="container-fluid">

                <script>

                    function total() {

                        m1 = document.getElementById('cantidad').value;
                        m2 = document.getElementById('precio').value;

                        resultado = m1 * m2;
                        document.getElementById('total').value = Math.round(resultado * 100) / 100;


                    }
                    ;
                    function produccion() {

                        var producto = $('#producto').val();
                        var campana = $('#campaña').val();

                        $.ajax({
                            url: "produccionCantidad",
                            data: {
                                producto: producto,
                                campana: campana




                            },
                            success: function (result) {


                                $('#cantidad_disponible').val(result);
                            }
                        })
                    }
                    ;


                    function campañas_agricultor() {
                        var agricultor = $('#agricultor').val();


                        $.ajax({
                            url: "campanaAgricultor",
                            data: {
                                agricultor: agricultor





                            },
                            success: function (result) {


                                $('#campañas_agricultor').html(result);
                            }
                        });
                    }

                    function productos_campaña() {
                        var campaña = $('#campaña').val();


                        $.ajax({
                            url: "productosCampana",
                            data: {
                                campana: campaña





                            },
                            success: function (result) {


                                $('#productos_campaña').html(result);
                            }
                        });
                    }

                    function editarV() {

                        var producto = $('#producto').val();
                        var numero_orden = $('#numero_orden').val();


                        var total = $('#total').val();
                        var fecha = $('#fecha').val();
                        var saco = $('#saco').val();
                        var campaña = $('#campaña').val();
                        var cantidad = $('#cantidad').val();
                        var precio = $('#precio').val();
                        var id = $('#id').val();


                        if (numero_orden == "" || producto == "" || fecha == "" || cantidad == "" || precio == "") {

                            $('#btnform').click();

                        } else {
                            $.ajax({
                                url: "ventaEditar",
                                data: {
                                    id: id,
                                    numero_orden: numero_orden,
                                    fecha: fecha,
                                    producto: producto,
                                    saco: saco,
                                    precio: precio,
                                    cantidad: cantidad,
                                    total: total,
                                    campana: campaña


                                },
                                success: function () {
                                    window.location = 'listarVentas.jsp';

                                    $('#btnnotificacionED').click();

                                }
                            });
                        }

                    }
                    ;

                    function editar(id, numero_orden, fecha, producto, saco, precio, cantidad, total, campaña, agricultor) {
                        $('#id').val(id);



                        $('#numero_orden').val(numero_orden);
                        $('#total').val(total);
                        $('#fecha').val(fecha);

                        $('#campaña').val(campaña);
                        $('#campaña').trigger("change");

                        $('#cantidad').val(cantidad);
                        $('#precio').val(precio);

                        $('#agricultor').val(agricultor);
                        $('#agricultor').trigger('change');

                        $('#saco').val(saco);
                        $('#saco').trigger('change');

                        $('#producto').val(producto);


                        $('#producto').trigger('change');


                        $('#ModalEditar').modal('show');
                    }
                    ;




                    function eliminar(id) {

                        $('#ModalEliminar').modal('show');
                        $('#btneliminar').val(id);


                    }
                    ;

                    function showNotification(colorName, text, placementFrom, placementAlign, animateEnter, animateExit) {
                        if (colorName === null || colorName === '') {
                            colorName = 'bg-black';
                        }
                        if (text === null || text === '') {
                            text = 'Turning standard Bootstrap alerts';
                        }
                        if (animateEnter === null || animateEnter === '') {
                            animateEnter = 'animated fadeInDown';
                        }
                        if (animateExit === null || animateExit === '') {
                            animateExit = 'animated fadeOutUp';
                        }
                        var allowDismiss = true;

                        $.notify({
                            message: text
                        },
                                {
                                    type: colorName,
                                    allow_dismiss: allowDismiss,
                                    newest_on_top: true,
                                    timer: 1000,
                                    placement: {
                                        from: placementFrom,
                                        align: placementAlign
                                    },
                                    animate: {
                                        enter: animateEnter,
                                        exit: animateExit
                                    },
                                    template: '<div data-notify="container" class="bootstrap-notify-container alert alert-dismissible {0} ' + (allowDismiss ? "p-r-35" : "") + '" role="alert">' +
                                            '<button type="button" aria-hidden="true" class="close" data-notify="dismiss"></button>' +
                                            '<span data-notify="icon"></span> ' +
                                            '<span data-notify="title">{1}</span> ' +
                                            '<span data-notify="message">{2}</span>' +
                                            '<div class="progress" data-notify="progressbar">' +
                                            '<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
                                            '</div>' +
                                            '<a href="{3}" target="{4}" data-notify="url"></a>' +
                                            '</div>'
                                });
                    }

                </script>   

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1"></h2>

                                    </div>
                                </div>
                            </div>





                            <div class="row">

                                <h2 class="title-1 m-b-25">Ventas</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table  class="table  table-hover dataTable js-exportable-fecha" style="padding-bottom: 0px;padding-top: 0px;font-size: 12px;background-color: #ffffff">
                                        <thead>
                                            <tr>
                                                <th class="text-right">N° Orden</th>
                                                <th  class="text-right">Fecha</th>
                                                <th class="text-right">Producto</th>

                                                <th class="text-right">Saco</th>
                                                <th class="text-right">Cantidad</th>


                                                <th class="text-right">Precio</th>
                                                <th class="text-right">Total</th>
                                                <th class="text-right">Agricultor</th>
                                                <th class="text-right">Campaña</th>

                                                <th class="text-right"></th>
                                                <th class="text-right"></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% for (venta v1 : ventaDao.listar_numero_orden()) {%>


                                            <%double suma = 0.0; %>
                                            <% for (venta v : ventaDao.listar(v1.getNumero_orden())) {%>
                                            <tr>

                                                <%String saco = "";
                                                    String producto = " ";
                                                    

                                                    switch (Integer.parseInt(v.getProducto())) {
                                                        case 1:
                                                            producto = "Arroz";
                                                            break;
                                                        case 2:
                                                            producto = "Arrocillo";
                                                            break;
                                                        case 3:
                                                            producto = "Descarte";
                                                            break;
                                                        case 4:
                                                            producto = "Polvillo";
                                                            break;
                                                        case 5:
                                                            producto = "Ñelen";
                                                            break;

                                                    }

                                                %>
                                                <td class="text-center"  style="font-size: 15px;width: 10%;padding-bottom:   0px;"><b><%=v.getNumero_orden()%></b></td>
                                                <td class="text-right" style="width: 15%;padding-bottom:   0px;"><%=v.getFecha()%></td>
                                                <td class="text-right" style="width: 10%;padding-bottom:   0px;"><%=producto%></td>
                                                <td class="text-right" style="width: 3%;padding-bottom:   0px;"><%=sacoDao.saco(v.getSaco()) %></td>
                                                <td class="text-right" style="width: 3%;padding-bottom:   0px;"><%=v.getCantidad()%></td>


                                                <td class="text-right" style="width: 6%;padding-bottom:   0px;"><%=v.getPrecio()%></td>
                                                <td class="text-right" style="width: 12%;padding-bottom:   0px;"><%=v.getTotal()%></td>
                                                <td class="text-right" style="width: 20%;padding-bottom:   0px;"><%=agricultorDao.agricultor_nombre(campañaDao.campaña_agricultor(v.getId_campañav()))%></td>
                                                <td class="text-right" style="width: 10%;padding-bottom:   0px;"><%=campañaDao.campaña_codigo(String.valueOf(v.getId_campañav()))%></td>
                                                <%

                                                    suma = v.getTotal() + suma;
                                                %>

                                                <td class="text-right" style="width: 7%;"><button style="font-size: 13px" class="btn bg-teal  waves-effect"  onclick="editar('<%=v.getId()%>', '<%=v.getNumero_orden()%>', '<%=v.getFecha()%>',<%=v.getProducto()%>,<%=v.getSaco()%>, '<%=v.getPrecio()%>', '<%=v.getCantidad()%>', '<%=v.getTotal()%> ',<%=v.getId_campañav()%>, <%=campañaDao.campaña_agricultor(v.getId_campañav())%>)">Editar</button></td>
                                                <td class="text-right" style="width: 7%;"><button  style="font-size: 13px" class="btn bg-teal  waves-effect" onclick="eliminar(<%=v.getId()%>)" >Eliminar</button></td>
                                            </tr>

                                            <% }%>
                                            <tr>

                                                <td class="text-right"  style="font-size: 15px;color: transparent"><b><%=v1.getNumero_orden()%></b></td>
                                                <td class="text-center"  style="color: transparent"><%=v1.getFecha()%></td>
                                                <td class="text-center"  style="color: transparent"><b></b></td>

                                                <td class="text-center"  style="color: transparent"><b></b></td>
                                                <td class="text-center"  style="font-size: 13px;"><b></b></td>

                                                <td class="text-right" style="font-size: 13px"><b>Total:</b></td> 

                                                <td class="text-center" style="font-size: 13px" ><b>S/. <%=suma%></b></td>
                                                <td class="text-center"  style="color: transparent"><b></b></td>
                                                <td class="text-center"  style="color: transparent"><b></b></td>
                                                <td class="text-center"  style="color: transparent"><b></b></td>
                                                <td class="text-center"  style="color: transparent"><b></b></td>


                                            </tr>      

                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>


                            </div>
                            <div class="row">
                                <div class="col-lg-6">

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="copyright">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a id="btnnotificacionED"  onclick="showNotification('bg-teal', 'Se actualizó correctamente', 'bottom', 'right', 'animated fadeInRight', 'animated fadeOutRight')" ></a>
                <a id="btnnotificacionEDn"  onclick="showNotification('bg-red', 'No se puede actualizar', 'bottom', 'right', 'animated fadeInRight', 'animated fadeOutRight')" ></a>
                <a id="btnnotificacionE"  onclick="showNotification('bg-red', 'Se eliminó la campaña', 'bottom', 'right', 'animated fadeInRight', 'animated fadeOutRight')" ></a>
                <a id="btnnotificacionEn"  onclick="showNotification('bg-red', 'No se pudo eliminar ', 'bottom', 'right', 'animated fadeInRight', 'animated fadeOutRight')" ></a>



                <!--MODAL ELIMINAR -->                              
                <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="text-center" id="defaultModalLabel">Eliminar Venta</h4>
                            </div>
                            <div class="modal-body">
                                <p align="left" style="color: #000 "><big>¿Está seguro de eliminar esta venta?</big></p>
                            </div>
                            <form action="ventaEliminar" method="post">  
                                <div class="modal-footer">
                                    <button type="submit" name="venta" id="btneliminar" class="btn  bg-teal waves-effect" >Eliminar</button>
                                    <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!--MODAL EDITAR -->                             
                <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">

                        <div class="modal-content">
                            <form action="ventaEditar" method="post">
                                <div class="modal-header">
                                    <h4 class="text-center"  >Editar Venta</h4>
                                </div>
                                <div class="modal-body">


                                    <div class="row clearfix">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">   
                                            <div class="section__content section__content--p30">

                                                <div class="body">
                                                    <input type="hidden" id="id" name="id">   
                                                    <div class="row clearfix">



                                                        <div class="col-md-5">

                                                            <b>Agricultor</b>
                                                            <div class="input-group">

                                                                <select id="agricultor" onchange="campañas_agricultor()"  class="form-control show-tick" data-live-search="true"  >
                                                                    <%for (agricultor a : agricultorDao.listar()) {%>
                                                                    <option    value="<%=a.getId()%>"><%=a.getNombre()%></option>
                                                                    <%}%>
                                                                </select>

                                                            </div>

                                                        </div>

                                                        <div class="col-md-5">  

                                                            <b>Campaña</b>

                                                            <div class="input-group">
                                                                <div id="campañas_agricultor">

                                                                </div> 

                                                            </div>



                                                        </div>
                                                        <div class="col-md-5">


                                                            <b>Producto</b>

                                                            <div class="input-group">
                                                                <select id='producto' name='producto' class="form-control show-tick" onchange="produccion()" >
                                                                    <option value='1'>Arroz</option>
                                                                    <option value='2'>Arrocillo</option>
                                                                    <option value='3'>Descarte</option>
                                                                    <option value='4'>Polvillo</option>
                                                                    <option value='5'>Ñelen</option>
                                                                </select>

                                                            </div>  
                                                        </div>  
                                                        <div class="col-md-5">
                                                            <b>Disponible</b>
                                                            <div class="input-group">

                                                                <div class="form-line">
                                                                    <input  id="cantidad_disponible" class="form-control  btn-default "   readonly>

                                                                </div>
                                                            </div>
                                                        </div>  




                                                        <div class="col-md-5">
                                                            <b>Número de orden</b>
                                                            <div class="input-group">

                                                                <div class="form-line">
                                                                    <input  id='numero_orden' name="numero_orden"  onkeypress="return justNumbers();" readonly class="form-control"  placeholder="" autocomplete="off" required="">

                                                                </div>
                                                            </div>
                                                        </div>  
                                                        <div class="col-md-5">
                                                            <b>Fecha</b>
                                                            <div class="input-group">

                                                                <div class="form-line">
                                                                    <input id='fecha'  name='fecha'  type="date" class="form-control " required="">
                                                                </div>
                                                            </div>
                                                        </div>




                                                        <div class="col-md-5">
                                                            <p>
                                                                <b>Saco</b>
                                                            </p>
                                                            <select  id='saco' name='saco' class="form-control show-tick" data-show-subtext="true">
                                                                 <option value="">Seleccione saco</option>
                                                                <%for (saco s :  sacoDao.listar()) {  %>
                                                                <option value="<%=s.getId() %>" ><%=s.getNombre()%></option>
                                                                <% }%>
                                                                


                                                            </select>
                                                        </div>


                                                        <div class="col-md-5">
                                                            <b>Cantidad</b>
                                                            <div class="input-group">

                                                                <div class="form-line">
                                                                    <input   class="form-control"  id='cantidad'  name='cantidad'  onkeyup="total()" onkeypress="return justNumbers(event);" placeholder="Cantidad" required="" autocomplete="off">

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <b>Precio</b>
                                                            <div class="input-group">

                                                                <div class="form-line">
                                                                    <input  id='precio' name='precio'  class="form-control"  required="" onkeyup="total()" onkeypress="return justNumbers();" placeholder="Precio" autocomplete="off">

                                                                </div>
                                                            </div>
                                                        </div> 






                                                        <button style="border: 0px"  id="btnform" type="submit">

                                                        </button>




                                                    </div>  
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="modal-footer">
                                    <input  type="submit" class="btn bg-teal  waves-effect" value="Guardar" >
                                    <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>


            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->



        </section>
        <script type="text/javascript" src="js/funciones.js"></script>
        <!-- Jquery Core Js -->
        <script src="plugins/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core Js -->
        <script src="plugins/bootstrap/js/bootstrap.js"></script>

        <!-- Select Plugin Js -->
        <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

        <!-- Slimscroll Plugin Js -->
        <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="plugins/node-waves/waves.js"></script>

        <!-- Jquery DataTable Plugin Js -->
        <script src="plugins/jquery-datatable/jquery.dataTables.js"></script>
        <script src="plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
        <script src="plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

        <!-- Custom Js -->
        <script src="js/admin.js"></script>
        <script src="js/pages/tables/jquery-datatable.js"></script>

        <!-- Demo Js -->
        <script src="js/demo.js"></script>
        <script src="js/pages/ui/notifications.js"></script>
        <script src="js/pages/ui/modals.js"></script>


    </body>

</html>
