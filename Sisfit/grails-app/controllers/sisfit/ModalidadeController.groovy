package sisfit

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.jyoshiriro.jasperResponse.renderers.Jasper

class ModalidadeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	def report() {
		render params as Jasper
	}

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [modalidadeInstanceList: Modalidade.list(params), modalidadeInstanceTotal: Modalidade.count()]
    }

    def create() {
        [modalidadeInstance: new Modalidade(params)]
    }

    def save() {
        def modalidadeInstance = new Modalidade(params)
        if (!modalidadeInstance.save(flush: true)) {
            render(view: "create", model: [modalidadeInstance: modalidadeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), modalidadeInstance.id])
        redirect(action: "show", id: modalidadeInstance.id)
    }

    def show(Long id) {
        def modalidadeInstance = Modalidade.get(id)
        if (!modalidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), id])
            redirect(action: "list")
            return
        }

        [modalidadeInstance: modalidadeInstance]
    }

    def edit(Long id) {
        def modalidadeInstance = Modalidade.get(id)
        if (!modalidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), id])
            redirect(action: "list")
            return
        }

        [modalidadeInstance: modalidadeInstance]
    }

    def update(Long id, Long version) {
        def modalidadeInstance = Modalidade.get(id)
        if (!modalidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (modalidadeInstance.version > version) {
                modalidadeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'modalidade.label', default: 'Modalidade')] as Object[],
                          "Another user has updated this Modalidade while you were editing")
                render(view: "edit", model: [modalidadeInstance: modalidadeInstance])
                return
            }
        }

        modalidadeInstance.properties = params

        if (!modalidadeInstance.save(flush: true)) {
            render(view: "edit", model: [modalidadeInstance: modalidadeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), modalidadeInstance.id])
        redirect(action: "show", id: modalidadeInstance.id)
    }

    def delete(Long id) {
        def modalidadeInstance = Modalidade.get(id)
        if (!modalidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), id])
            redirect(action: "list")
            return
        }

        try {
            modalidadeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'modalidade.label', default: 'Modalidade'), id])
            redirect(action: "show", id: id)
        }
    }
}
