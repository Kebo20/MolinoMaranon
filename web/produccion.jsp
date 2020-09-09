<%@page import="dao.produccionDao"%>
<%@page import="modelo.produccion"%>
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
                        <li>
                            <a href="javascript:void(0);"  class="menu-toggle">
                                <i class="material-icons"></i>
                                <span>Ventas</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="ventas.jsp" >
                                        <span>Registrar</span>
                                    </a>

                                </li>
                                <li>
                                    <a href="listarVentas.jsp" >
                                        <span>Listar Ventas</span>
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
                                <span style="color: #0e7379">Producción</span>
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
                <div class="block-header">
                    <h2>

                    </h2>
                </div>

                <!-- MAIN CONTENT-->
                <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="overview-wrap">
                                        <h2 class="title-1">Produccion</h2>

                                    </div>
                                </div>
                            </div>
                            <!-- Masked Input -->
                            <div class="row clearfix">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="card">

                                        <div class="body">

                                            <div>      
                                                <div class="demo-masked-input">

                                                    <div class="row clearfix">
                                                        <form id="formP">           
                                                            <input type="hidden" id="id_campaña" value="<%=request.getParameter("campana")%>">

                                                            <div class="col-md-4">
                                                                <p>
                                                                    <b>Tipo</b>
                                                                </p>
                                                                <select id="productoP" class="form-control show-tick" >

                                                                    <option value="1">Arroz</option>
                                                                    <option value="2">Arrocillo</option>
                                                                    <option value="3">Descarte</option>
                                                                    <option value="4">Polvillo</option>
                                                                    <option value="5">Ñelen</option>
                                                                </select>
                                                            </div>         

                                                            <div class="col-md-4">
                                                                <b># de sacos</b>
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">
                                                                        <i class="fa fa-calculator"></i>
                                                                    </span>
                                                                    <div class="form-line">
                                                                        <input  id="numero_sacosP"  class="form-control" onkeypress='return justNumbers()'   required placeholder="# de sacos" autocomplete="off">

                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-4">
                                                                <b># de kilos extra</b>
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">
                                                                        <i class="fa fa-calculator"></i>
                                                                    </span>
                                                                    <div class="form-line">
                                                                        <input   id="numero_kilosP"   class="form-control"   onkeypress='return justNumbers()' placeholder=" .Kg" autocomplete="off">

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <button style="border: 0px"  id="btnform" type="submit">

                                                            </button>

                                                        </form>

                                                    </div>

                                                </div>
                                                <div style="text-align: center">
                                                    <%if (campañaDao.campaña_estado(request.getParameter("campana")).equals("activo")) { %>
                                                    <button onclick="agregarP()" class="btn bg-teal  btn-lg waves-effect" >
                                                        Añadir
                                                    </button>
                                                    <% }%>

                                                    <a id="btnnotificacionR"  onclick="showNotification('bg-teal', 'Se registró correctamente', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                                    <a id="btnnotificacionRn"  onclick="showNotification('bg-black', 'No se puede registrar ', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                                    <a id="btnnotificacionED"  onclick="showNotification('bg-teal', 'Se actualizó correctamente', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                                    <a id="btnnotificacionEDn"  onclick="showNotification('bg-black', 'No se puede actualizar', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                                    <a id="btnnotificacionE"  onclick="showNotification('bg-teal', 'Se eliminó correctamente', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                                    <a id="btnnotificacionEn"  onclick="showNotification('bg-black', 'No se pudo eliminar ', 'bottom', 'right', 'animated lightSpeedIn', 'animated lightSpeedOut')" ></a>
                                                </div>  
                                            </div>  

                                            <script>
                                                var $table = $('#tableD');
                                                $table.DataTable({
                                                    language: {
                                                        "decimal": "",
                                                        "emptyTable": "No hay datos",
                                                        "info": "Mostrando _START_ a _END_ de _TOTAL_ datos",
                                                        "infoEmpty": "Mostrando 0 al 0 de 0 datos",
                                                        "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                                                        "infoPostFix": "",
                                                        "thousands": ",",
                                                        "lengthMenu": "Mostrar _MENU_ datos",
                                                        "loadingRecords": "Cargando...",
                                                        "processing": "Procesando...",
                                                        "search": "Buscar:",
                                                        "zeroRecords": "Sin resultados encontrados",
                                                        "paginate": {
                                                            "first": "Primero",
                                                            "last": "Ultimo",
                                                            "next": "Siguiente",
                                                            "previous": "Anterior"
                                                        }
                                                    }


                                                });
                                            </script> 


                                            <script>


                                                function agregarP() {

                                                    var producto = $('#productoP').val();
                                                    var numero_sacos = $('#numero_sacosP').val();
                                                    var numero_kilos = $('#numero_kilosP').val();
                                                    var subtotal = $('#subtotalP').val();
                                                    var campaña = $('#id_campaña').val();

                                                    if (producto == "" || numero_sacos == "") {

                                                        $('#btnform').click();

                                                    } else {
                                                        $.ajax({
                                                            url: "produccionRegistrar",
                                                            data: {
                                                                numero_sacos: numero_sacos,
                                                                producto: producto,
                                                                numero_kilos: numero_kilos,
                                                                subtotal: subtotal,
                                                                campana: campaña




                                                            },
                                                            success: function (result) {
                                                                if (result == "") {

                                                                    $('#btnnotificacionRn').click();


                                                                } else {
                                                                    $('#filasC').html(result);
                                                                    $('#btnnotificacionR').click();
                                                                    $('#productoP').val("");
                                                                    $('#numero_sacosP').val("");
                                                                    $('#numero_kilosP').val("");
                                                                }

                                                            }
                                                        });
                                                    }

                                                }

                                            </script>

                                            <script>
                                                function eliminarP() {

                                                    var produccion = $('#btneliminar').val();
                                                    var campaña = $('#id_campaña').val();
                                                    $.ajax({
                                                        url: "produccionEliminar",
                                                        data: {
                                                            produccion: produccion,
                                                            campana: campaña


                                                        },
                                                        success: function (result) {


                                                            if (result == ":(") {

                                                                $('#btnnotificacionEn').click();


                                                            } else {
                                                                $('#filasC').html(result);
                                                                $('#btnnotificacionE').click();
                                                                $('#ModalEliminar').modal('hide');
                                                            }

                                                        }
                                                    }
                                                    )
                                                }
                                                ;

                                                function eliminar(id) {

                                                    $('#ModalEliminar').modal('show');
                                                    $('#btneliminar').val(id);


                                                }
                                                ;


                                                function editar(id, producto, numero_sacos, numero_kilos) {


                                                    $('#idPE').val(id);
                                                    $('#productoPE').val(producto);

                                                    $('#productoPE').trigger('change');

                                                    $('#numero_sacosPE').val(numero_sacos);
                                                    $('#numero_kilosPE').val(numero_kilos);

                                                    $('#ModalEditar').modal('show');


                                                }
                                                ;


                                                function editarP() {
                                                    var produccion = $('#idPE').val();
                                                    var producto = $('#productoPE').val();
                                                    var numero_sacos = $('#numero_sacosPE').val();
                                                    var numero_kilos = $('#numero_kilosPE').val();
                                                    var campaña = $('#id_campaña').val();



                                                    if (numero_sacos == "") {

                                                        $('#btnformE').click();

                                                    } else {
                                                        $.ajax({
                                                            url: "produccionEditar",
                                                            data: {
                                                                produccion: produccion,
                                                                numero_sacos: numero_sacos,
                                                                producto: producto,
                                                                numero_kilos: numero_kilos,
                                                                campana: campaña

                                                            },
                                                            success: function (result) {
                                                                if (result == "") {

                                                                    $('#btnnotificacionEDn').click();


                                                                } else {
                                                                    $('#filasC').html(result);
                                                                    $('#btnnotificacionED').click();
                                                                    $('#ModalEditar').modal('hide');
                                                                }

                                                            }
                                                        });
                                                    }


                                                }


                                            </script>






                                        </div>
                                    </div>



                                    <div class="body">
                                        <div  class="table-responsive  table--no-card m-b-40">
                                            <table  id="tableD" class="table table-bordered table-striped table-hover ">
                                                <thead>
                                                    <tr>



                                                        <th class="">Producto</th>
                                                        <th class=""># Sacos</th>
                                                        <th class="">#kilos extra</th>
                                                        <th class="text-right"></th>
                                                        <th class="text-right"></th>



                                                    </tr>
                                                </thead>
                                                <tbody id="filasC">
                                                    <% for (produccion p : produccionDao.listar(request.getParameter("campana"))) {%>

                                                    <%String producto = " ";
                                                        switch (Integer.parseInt(p.getProducto())) {
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

                                                    <tr >
                                                        <td><%=producto%></td>
                                                        <td><%=p.getNumero_sacos()%></td>
                                                        <td><%=p.getNumero_kilos()%></td>


                                                        <%if (campañaDao.campaña_estado(request.getParameter("campana")).equals("activo")) {%>
                                                        <td class='text-center'><button onclick="editar('<%=p.getId()%>', '<%=p.getProducto().toString().trim()%>', '<%=p.getNumero_sacos()%>', '<%=p.getNumero_kilos()%>')"   class='btn bg-teal btn-lg waves-effect btn-xs'>Editar</button></td>
                                                        <td class='text-center'><button onclick="eliminar(<%=p.getId()%>)" class='btn bg-teal btn-lg waves-effect btn-xs'>Eliminar</button></td>

                                                        <% }%>
                                                    </tr>  

                                                    <%}%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- #END# Masked Input -->


                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->


            <!--MODAL ELIMINAR -->                              
            <div class="modal fade" id="ModalEliminar" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="text-center" id="defaultModalLabel">Eliminar produccion</h4>
                        </div>
                        <div class="modal-body">
                            <p align="left" style="color: #000 "><big>¿Está seguro de eliminar esta producción?</big></p>
                        </div>

                        <div class="modal-footer">
                            <button onclick="eliminarP()"  id="btneliminar" class="btn  bg-teal waves-effect">Eliminar</button>
                            <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Modal Editar-->                               
            <div class="modal fade" id="ModalEditar" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">

                        <div class="modal-header">
                            <h4 class="text-center"  >Editar Producción</h4>
                        </div>
                        <div class="modal-body">
                            <form > 
                                <button style="border: 0px"  id="btnformE" type="submit">

                                </button>
                                <div class="row clearfix">

                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">   
                                        <div class="section__content section__content--p30">

                                            <div class="body">
                                                <input type="hidden" id="idPE" >   


                                                <div class="row">
                                                    <p>
                                                        <b>Tipo</b>
                                                    </p>
                                                    <select  id="productoPE" class="form-control">


                                                        <option value="1">Arroz</option>
                                                        <option value="2">Arrocillo</option>
                                                        <option value="3">Descarte</option>
                                                        <option value="4">Polvillo</option>
                                                        <option value="5">Ñelen</option>

                                                    </select>
                                                </div>         

                                                <div class="row">
                                                    <b># de sacos</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-calculator"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input  id="numero_sacosPE"  class="form-control" onkeypress='return justNumbers()'   required placeholder="# de sacos" autocomplete="off">

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <b># de kilos extra</b>
                                                    <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <i class="fa fa-calculator"></i>
                                                        </span>
                                                        <div class="form-line">
                                                            <input   id="numero_kilosPE"   class="form-control"   onkeypress='return justNumbers()' placeholder=" .Kg" autocomplete="off">

                                                        </div>
                                                    </div>


                                                </div>

                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </form>

                            <div class="modal-footer">
                                <button type="button" onclick="editarP()" class="btn bg-teal  waves-effect"  >Guardar</button>
                                <button type="button" class="btn  waves-effect" data-dismiss="modal">Cerrar</button>
                            </div>

                        </div>
                    </div>
                </div>


            </div>





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
        <script src="plugins/bootstrap-notify/bootstrap-notify.js"></script>
        <!-- Custom Js -->
        <script src="js/admin.js"></script>
        <script src="js/pages/tables/jquery-datatable.js"></script>

        <!-- Demo Js -->
        <script src="js/demo.js"></script>
        <script src="js/pages/ui/notifications.js"></script>
        <script src="js/pages/ui/modals.js"></script>

    </body>

</html>

