module.exports.avaliacao=function(application,req,res){
	res.render("professor/avaliacao");
}

module.exports.frequencia=function(application,req,res){
	res.render("professor/frequencia");
}

module.exports.posta_material=function(application,req,res){
	res.render("professor/posta_material");
}

module.exports.renderProfessor=function(application,req,res){
	res.render("professor/professor");
}
