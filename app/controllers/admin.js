module.exports.homeAdmin = function(application, req, res) {
    res.render("admin/admin");
}

module.exports.formulario_inclusao_usuario = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    //console.log(pessoa2);
    academicoModel.getDepartamento(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/usuarios", { departamentos: result });
    });


}

module.exports.formulario_inclusao_adm = function(application, req, res) {
    res.render("admin/cadastrar_adm");
}

module.exports.formulario_inclusao_adm_salvar = function(application, req, res) {
    var pessoa = req.body;
    console.log(pessoa);
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    academicoModel.salvarAdm(pessoa, function(error, result) {
        //res.redirect('/noticias');
        res.redirect('/admin');
    });
}

module.exports.formulario_inclusao_aluno = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    //console.log(pessoa2);
    academicoModel.getCurso(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/cadastrar_aluno", { cursos: result });
    });
}

module.exports.formulario_inclusao_aluno_salvar = function(application, req, res) {
    var pessoa = req.body;
    console.log(pessoa);
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    academicoModel.salvarAluno(pessoa, function(error, result) {
        //res.redirect('/noticias');
        res.redirect('/admin');
    });
}

module.exports.formulario_inclusao_professor = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    //console.log(pessoa2);
    academicoModel.getDepartamento(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/cadastrar_professor", { departamentos: result });
    });
}

module.exports.formulario_inclusao_professor_salvar = function(application, req, res) {
    var pessoa = req.body;
    console.log(pessoa);
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    academicoModel.salvarProfessor(pessoa, function(error, result) {
        //res.redirect('/noticias');
        res.redirect('/admin');
    });
}

module.exports.formulario_inclusao_secretaria = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    //console.log(pessoa2);
    academicoModel.getDepartamento(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/cadastrar_secretaria", { departamentos: result });
    });
}

module.exports.formulario_inclusao_secretaria_salvar = function(application, req, res) {
    var pessoa = req.body;
    console.log(pessoa);
    req.assert('Data_Nascimento', 'Data é obrigatório').notEmpty().isDate({ format: 'YYYY-MM-DD' });
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    academicoModel.salvarSecretaria(pessoa, function(error, result) {
        //res.redirect('/noticias');
        res.redirect('/admin');
    });
}

module.exports.formulario_inclusao_usuario_salvar = function(application, req, res) {
    //console.log(typeof(req.body.optradio));
    var pessoa = req.body;
    console.log(pessoa);
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    //console.log(pessoa2);
    if (pessoa.optradio == "Administrador") {
        academicoModel.salvarAdm(pessoa, function(error, result) {
            //res.redirect('/noticias');
            res.redirect('/admin');
        });

    }

}

module.exports.formulario_inclusao_Departamento_salvar = function(application, req, res) {
    //console.log(typeof(req.body.optradio));
    var departamento = req.body;
    console.log(departamento);
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    //console.log(pessoa2);

    academicoModel.salvarDepartamento(departamento, function(error, result) {
        //res.redirect('/noticias');
        res.redirect('/admin');

    });




}

module.exports.formulario_inclusao_curso = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    //console.log(pessoa2);
    academicoModel.getDepartamento(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/cursos", { departamentos: result });
    });
}

module.exports.formulario_inclusao_curso_salvar = function(application, req, res) {
    var curso = req.body;
    console.log(curso);
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    academicoModel.salvarCurso(curso, function(error, result) {
        //res.redirect('/noticias');
        res.redirect('/admin');
    });
}

module.exports.formulario_inclusao_departamento = function(application, req, res) {
    res.render("admin/departamento");
}

module.exports.lista_curso = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    var NDepartamentos;
    //console.log(pessoa2);
    academicoModel.NDepartamentosCurso(function(error, result2) {
        //res.redirect('/noticias');
        NDepartamentos=result2;
    });
    academicoModel.getTodosCursos(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/listar_cursos", { cursos: result, Numero:NDepartamentos});
    });
}

module.exports.lista_usuario = function(application, req, res) {
    res.render("admin/listar_usuarios");
}

module.exports.lista_professor = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    var NDepartamentos;
    //console.log(pessoa2);
    academicoModel.NDepartamentosProfessor(function(error, result2) {
        //res.redirect('/noticias');
        NDepartamentos=result2;
    });
    academicoModel.getTodosProfessores(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/listar_professor", { professores: result, Numero:NDepartamentos});
    });
}

module.exports.lista_adm = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    academicoModel.getTodosAdm(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/listar_adm", { Adms: result});
    });
}

module.exports.lista_secretaria = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    var NDepartamentos;
    //console.log(pessoa2);
    academicoModel.NDepartamentosSecretaria(function(error, result2) {
        //res.redirect('/noticias');
        NDepartamentos=result2;
    });
    academicoModel.getTodasSecretarias(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/listar_secretaria", { secretarias: result, Numero:NDepartamentos});
    });

}

module.exports.lista_aluno = function(application, req, res) {
    var connection = application.config.dbConnection();
    var academicoModel = new application.app.models.academicoDAO(connection);
    var Ncursos;
    //console.log(pessoa2);
    academicoModel.NCursos(function(error, result2) {
        //res.redirect('/noticias');
        Ncursos=result2;
    });
    academicoModel.getTodosAlunos(function(error, result) {
        //res.redirect('/noticias');
        res.render("admin/listar_aluno", { alunos: result, Numero:Ncursos});
    });
}