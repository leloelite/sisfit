package sisfit2



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ModalidadeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Modalidade.list(params), model:[modalidadeInstanceCount: Modalidade.count()]
    }

    def show(Modalidade modalidadeInstance) {
        respond modalidadeInstance
    }

    def create() {
        respond new Modalidade(params)
    }

    @Transactional
    def save(Modalidade modalidadeInstance) {
        if (modalidadeInstance == null) {
            notFound()
            return
        }

        if (modalidadeInstance.hasErrors()) {
            respond modalidadeInstance.errors, view:'create'
            return
        }

        modalidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'modalidadeInstance.label', default: 'Modalidade'), modalidadeInstance.id])
                redirect modalidadeInstance
            }
            '*' { respond modalidadeInstance, [status: CREATED] }
        }
    }

    def edit(Modalidade modalidadeInstance) {
        respond modalidadeInstance
    }

    @Transactional
    def update(Modalidade modalidadeInstance) {
        if (modalidadeInstance == null) {
            notFound()
            return
        }

        if (modalidadeInstance.hasErrors()) {
            respond modalidadeInstance.errors, view:'edit'
            return
        }

        modalidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Modalidade.label', default: 'Modalidade'), modalidadeInstance.id])
                redirect modalidadeInstance
            }
            '*'{ respond modalidadeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Modalidade modalidadeInstance) {

        if (modalidadeInstance == null) {
            notFound()
            return
        }

        modalidadeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Modalidade.label', default: 'Modalidade'), modalidadeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'modalidadeInstance.label', default: 'Modalidade'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
