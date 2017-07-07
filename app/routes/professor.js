//var dbConnection =require ('../../config/dbConnection');
module.exports=function(application){
		
	application.get('/avaliacao',function(req,res){

		application.app.controllers.professor.avaliacao(application,req,res);
		
	});

	application.get('/frequencia',function(req,res){
		application.app.controllers.professor.frequencia(application,req,res);
	});
	application.get('/posta_material',function(req,res){
		application.app.controllers.professor.posta_material(application,req,res);
	});
	application.get('/professor',function(req,res){

		application.app.controllers.professor.renderProfessor(application,req,res);
		
	});

};

