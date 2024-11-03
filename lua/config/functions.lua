local M = {}

function M.wrap_in_div()
    -- Obtiene el texto seleccionado
    local visual_selection = vim.fn.getreg('"')
    -- Envuelve el texto en un <div>
    local wrapped_text = "<div>" .. visual_selection .. "</div>"
    -- Reemplaza el texto seleccionado con el texto envuelto
    vim.api.nvim_put({ wrapped_text }, "c", false, true)
end

return M
