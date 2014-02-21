package sisfit



import org.junit.*
import grails.test.mixin.*

@TestFor(AlocacaoController)
@Mock(Alocacao)
class AlocacaoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/alocacao/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.alocacaoInstanceList.size() == 0
        assert model.alocacaoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.alocacaoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.alocacaoInstance != null
        assert view == '/alocacao/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/alocacao/show/1'
        assert controller.flash.message != null
        assert Alocacao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/alocacao/list'

        populateValidParams(params)
        def alocacao = new Alocacao(params)

        assert alocacao.save() != null

        params.id = alocacao.id

        def model = controller.show()

        assert model.alocacaoInstance == alocacao
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/alocacao/list'

        populateValidParams(params)
        def alocacao = new Alocacao(params)

        assert alocacao.save() != null

        params.id = alocacao.id

        def model = controller.edit()

        assert model.alocacaoInstance == alocacao
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/alocacao/list'

        response.reset()

        populateValidParams(params)
        def alocacao = new Alocacao(params)

        assert alocacao.save() != null

        // test invalid parameters in update
        params.id = alocacao.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/alocacao/edit"
        assert model.alocacaoInstance != null

        alocacao.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/alocacao/show/$alocacao.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        alocacao.clearErrors()

        populateValidParams(params)
        params.id = alocacao.id
        params.version = -1
        controller.update()

        assert view == "/alocacao/edit"
        assert model.alocacaoInstance != null
        assert model.alocacaoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/alocacao/list'

        response.reset()

        populateValidParams(params)
        def alocacao = new Alocacao(params)

        assert alocacao.save() != null
        assert Alocacao.count() == 1

        params.id = alocacao.id

        controller.delete()

        assert Alocacao.count() == 0
        assert Alocacao.get(alocacao.id) == null
        assert response.redirectedUrl == '/alocacao/list'
    }
}
