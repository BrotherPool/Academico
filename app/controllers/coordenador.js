module.exports.alocaAluno=function(application,req,res){
	res.render("coordenador/alocar_aluno");
}

module.exports.alocaProfessor=function(application,req,res){
	res.render("coordenador/alocar_professor");
}

module.exports.renderCoordenador=function(application,req,res){
	res.render("coordenador/coordenador");
}

module.exports.criaTurma=function(application,req,res){
	res.render("coordenador/cria_turma");
}


