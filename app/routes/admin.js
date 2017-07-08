
module.exports=function(application){
	application.get('/admin',function(req,res){
		application.app.controllers.admin.homeAdmin(application,req,res);
	});

	application.get('/cadastro_de_cursos',function(req,res){
		application.app.controllers.admin.formulario_inclusao_curso(application,req,res);
	});

	application.get('/cadastro_de_usuarios',function(req,res){
		application.app.controllers.admin.formulario_inclusao_usuario(application,req,res);
	});

	application.post('/cadastro_de_usuarios/salvar',function(req,res){
		application.app.controllers.admin.formulario_inclusao_usuario_salvar(application,req,res);
	});

	application.get('/lista_cursos',function(req,res){
		application.app.controllers.admin.lista_curso(application,req,res);
	});

	application.get('/lista_usuarios',function(req,res){
		application.app.controllers.admin.lista_usuario(application,req,res);
	});

	application.get('/cadastro_de_departamentos',function(req,res){
		application.app.controllers.admin.formulario_inclusao_departamento(application,req,res);
	});

	application.post('/cadastro_de_departamentos/salvar',function(req,res){
		application.app.controllers.admin.formulario_inclusao_Departamento_salvar(application,req,res);
	});

}