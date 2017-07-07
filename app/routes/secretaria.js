//var dbConnection =require ('../../config/dbConnection');
module.exports=function(application){
		
	
	application.get('/diario_de_classe',function(req,res){

		application.app.controllers.secretaria.diario(application,req,res);
		
	});

	application.get('/historico_do_aluno',function(req,res){

		application.app.controllers.secretaria.historico(application,req,res);
		
	});


	application.get('/matricular_aluno',function(req,res){

		application.app.controllers.secretaria.matricular(application,req,res);
		
	});

	application.get('/secretaria',function(req,res){

		application.app.controllers.secretaria.renderSecretaria(application,req,res);
		
	});

	application.get('/trancar_matricula_do_aluno',function(req,res){

		application.app.controllers.secretaria.trancar_matricula_do_aluno(application,req,res);
		
	});

	

};

