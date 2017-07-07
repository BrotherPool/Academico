module.exports=function(application){
	application.get('/alocar_aluno',function(req,res){
		application.app.controllers.coordenador.alocaAluno(application,req,res);
	});

	application.get('/alocar_professor',function(req,res){
		application.app.controllers.coordenador.alocaProfessor(application,req,res);
	});

	application.get('/coordenador',function(req,res){
		application.app.controllers.coordenador.renderCoordenador(application,req,res);
	});

	application.get('/cria_turma',function(req,res){
		application.app.controllers.coordenador.criaTurma(application,req,res);
	});
}

