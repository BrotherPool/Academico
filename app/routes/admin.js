module.exports = function(application) {
    application.get('/admin', function(req, res) {
        application.app.controllers.admin.homeAdmin(application, req, res);
    });

    application.get('/cadastro_de_cursos', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_curso(application, req, res);
    });
    application.post('/cadastro_de_cursos/salvar', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_curso_salvar(application, req, res);
    });

    application.get('/cadastro_de_usuarios', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_usuario(application, req, res);
    });

    application.get('/cadastro_adm', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_adm(application, req, res);
    });

    application.post('/cadastro_de_adm/salvar', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_adm_salvar(application, req, res);
    });

    application.get('/cadastro_aluno', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_aluno(application, req, res);
    });

    application.post('/cadastro_aluno/salvar', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_aluno_salvar(application, req, res);
    });

    application.get('/cadastro_professor', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_professor(application, req, res);
    });

    application.post('/cadastro_professor/salvar', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_professor_salvar(application, req, res);
    });

    application.get('/cadastro_secretaria', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_secretaria(application, req, res);
    });

    application.post('/cadastro_secretaria/salvar', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_secretaria_salvar(application, req, res);
    });

    application.post('/cadastro_de_usuarios/salvar', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_usuario_salvar(application, req, res);
    });

    application.get('/lista_cursos', function(req, res) {
        application.app.controllers.admin.lista_curso(application, req, res);
    });

    application.get('/lista_usuarios', function(req, res) {
        application.app.controllers.admin.lista_usuario(application, req, res);
    });

    application.get('/cadastro_de_departamentos', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_departamento(application, req, res);
    });

    application.post('/cadastro_de_departamentos/salvar', function(req, res) {
        application.app.controllers.admin.formulario_inclusao_Departamento_salvar(application, req, res);
    });

    application.get('/listar_adm', function(req, res) {
        application.app.controllers.admin.lista_adm(application, req, res);
    });

    application.get('/listar_professor', function(req, res) {
        application.app.controllers.admin.lista_professor(application, req, res);
    });

    application.get('/listar_secretaria', function(req, res) {
        application.app.controllers.admin.lista_secretaria(application, req, res);
    });

    application.get('/listar_aluno', function(req, res) {
        application.app.controllers.admin.lista_aluno(application, req, res);
    });



}