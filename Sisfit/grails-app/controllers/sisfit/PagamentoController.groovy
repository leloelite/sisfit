package sisfit

import org.springframework.dao.DataIntegrityViolationException

class PagamentoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [pagamentoInstanceList: Pagamento.list(params), pagamentoInstanceTotal: Pagamento.count()]
    }

    def create() {
        [pagamentoInstance: new Pagamento(params)]
    }

    def save() {
        def pagamentoInstance = new Pagamento(params)
        if (!pagamentoInstance.save(flush: true)) {
            render(view: "create", model: [pagamentoInstance: pagamentoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), pagamentoInstance.id])
        redirect(action: "show", id: pagamentoInstance.id)
    }

    def show(Long id) {
        def pagamentoInstance = Pagamento.get(id)
        if (!pagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), id])
            redirect(action: "list")
            return
        }

        [pagamentoInstance: pagamentoInstance]
    }

    def edit(Long id) {
        def pagamentoInstance = Pagamento.get(id)
        if (!pagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), id])
            redirect(action: "list")
            return
        }

        [pagamentoInstance: pagamentoInstance]
    }

    def update(Long id, Long version) {
        def pagamentoInstance = Pagamento.get(id)
        if (!pagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (pagamentoInstance.version > version) {
                pagamentoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pagamento.label', default: 'Pagamento')] as Object[],
                          "Another user has updated this Pagamento while you were editing")
                render(view: "edit", model: [pagamentoInstance: pagamentoInstance])
                return
            }
        }

        pagamentoInstance.properties = params

        if (!pagamentoInstance.save(flush: true)) {
            render(view: "edit", model: [pagamentoInstance: pagamentoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), pagamentoInstance.id])
        redirect(action: "show", id: pagamentoInstance.id)
    }

    def delete(Long id) {
        def pagamentoInstance = Pagamento.get(id)
        if (!pagamentoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), id])
            redirect(action: "list")
            return
        }

        try {
            pagamentoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pagamento.label', default: 'Pagamento'), id])
            redirect(action: "show", id: id)
        }
    }
}
