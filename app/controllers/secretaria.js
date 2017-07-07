module.exports.diario=function(application,req,res){
	res.render("secretaria/diario");
}

module.exports.historico=function(application,req,res){
	res.render("secretaria/historico");
}

module.exports.matricular=function(application,req,res){
	res.render("secretaria/matricula");
}

module.exports.renderSecretaria=function(application,req,res){
	res.render("secretaria/secretaria");
}

module.exports.trancar_matricula_do_aluno=function(application,req,res){
	res.render("secretaria/trancar");
}