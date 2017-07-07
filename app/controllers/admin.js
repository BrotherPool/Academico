module.exports.homeAdmin=function(application,req,res){
	res.render("admin/admin");	
}

module.exports.formulario_inclusao_usuario=function(application,req,res){
	res.render("admin/usuarios");	
}

module.exports.formulario_inclusao_usuario_salvar=function(application,req,res){
	//console.log(typeof(req.body.optradio));
	var pessoa=req.body;
	var connection=application.config.dbConnection();
	var academicoModel=new application.app.models.academicoDAO(connection);
	//console.log(pessoa2);
	if(pessoa.optradio=="Administrador")
	{
		academicoModel.salvarAdm(pessoa,function(error,result){
			//res.redirect('/noticias');
			res.redirect('/admin');	
		});
		
	}
	
}

module.exports.formulario_inclusao_curso=function(application,req,res){
	res.render("admin/cursos");	
}

module.exports.lista_curso=function(application,req,res){
	res.render("admin/listar_cursos");	
}

module.exports.lista_usuario=function(application,req,res){
	res.render("admin/listar_usuarios");	
}