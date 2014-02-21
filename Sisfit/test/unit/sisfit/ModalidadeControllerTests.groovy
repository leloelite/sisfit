package sisfit



import org.junit.*
import grails.test.mixin.*

@TestFor(ModalidadeController)
@Mock(Modalidade)
class ModalidadeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/modalidade/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.modalidadeInstanceList.size() == 0
        assert model.modalidadeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.modalidadeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.modalidadeInstance != null
        assert view == '/modalidade/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/modalidade/show/1'
        assert controller.flash.message != null
        assert Modalidade.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/modalidade/list'

        populateValidParams(params)
        def modalidade = new Modalidade(params)

        assert modalidade.save() != null

        params.id = modalidade.id

        def model = controller.show()

        assert model.modalidadeInstance == modalidade
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/modalidade/list'

        populateValidParams(params)
        def modalidade = new Modalidade(params)

        assert modalidade.save() != null

        params.id = modalidade.id

        def model = controller.edit()

        assert model.modalidadeInstance == modalidade
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/modalidade/list'

        response.reset()

        populateValidParams(params)
        def modalidade = new Modalidade(params)

        assert modalidade.save() != null

        // test invalid parameters in update
        params.id = modalidade.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/modalidade/edit"
        assert model.modalidadeInstance != null

        modalidade.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/modalidade/show/$modalidade.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        modalidade.clearErrors()

        populateValidParams(params)
        params.id = modalidade.id
        params.version = -1
        controller.update()

        assert view == "/modalidade/edit"
        assert model.modalidadeInstance != null
        assert model.modalidadeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/modalidade/list'

        response.reset()

        populateValidParams(params)
        def modalidade = new Modalidade(params)

        assert modalidade.save() != null
        assert Modalidade.count() == 1

        params.id = modalidade.id

        controller.delete()

        assert Modalidade.count() == 0
        assert Modalidade.get(modalidade.id) == null
        assert response.redirectedUrl == '/modalidade/list'
    }
}
