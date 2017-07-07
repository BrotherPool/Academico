
module.exports=function(application){
	application.get('/estudante',function(req,res){
		application.app.controllers.estudante.renderEstudante(application,req,res);
	});

	application.get('/ver_horario',function(req,res){
		application.app.controllers.estudante.horario(application,req,res);
	});	

	application.get('/ver_material',function(req,res){
		application.app.controllers.estudante.material(application,req,res);
	});	

	application.get('/ver_notas',function(req,res){
		application.app.controllers.estudante.notas(application,req,res);
	});	

	application.get('/trancar_matricula',function(req,res){
		application.app.controllers.estudante.trancar(application,req,res);
	});	



}