package sisfit

import org.springframework.dao.DataIntegrityViolationException

class AlocacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [alocacaoInstanceList: Alocacao.list(params), alocacaoInstanceTotal: Alocacao.count()]
    }

    def create() {
        [alocacaoInstance: new Alocacao(params)]
    }

    def save() {
        def alocacaoInstance = new Alocacao(params)
        if (!alocacaoInstance.save(flush: true)) {
            render(view: "create", model: [alocacaoInstance: alocacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), alocacaoInstance.id])
        redirect(action: "show", id: alocacaoInstance.id)
    }

    def show(Long id) {
        def alocacaoInstance = Alocacao.get(id)
        if (!alocacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), id])
            redirect(action: "list")
            return
        }

        [alocacaoInstance: alocacaoInstance]
    }

    def edit(Long id) {
        def alocacaoInstance = Alocacao.get(id)
        if (!alocacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), id])
            redirect(action: "list")
            return
        }

        [alocacaoInstance: alocacaoInstance]
    }

    def update(Long id, Long version) {
        def alocacaoInstance = Alocacao.get(id)
        if (!alocacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (alocacaoInstance.version > version) {
                alocacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'alocacao.label', default: 'Alocacao')] as Object[],
                          "Another user has updated this Alocacao while you were editing")
                render(view: "edit", model: [alocacaoInstance: alocacaoInstance])
                return
            }
        }

        alocacaoInstance.properties = params

        if (!alocacaoInstance.save(flush: true)) {
            render(view: "edit", model: [alocacaoInstance: alocacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), alocacaoInstance.id])
        redirect(action: "show", id: alocacaoInstance.id)
    }

    def delete(Long id) {
        def alocacaoInstance = Alocacao.get(id)
        if (!alocacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), id])
            redirect(action: "list")
            return
        }

        try {
            alocacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'alocacao.label', default: 'Alocacao'), id])
            redirect(action: "show", id: id)
        }
    }
}
