local M = {}

function M.insert_image()
    local image_directory = "/Users/wahabahmad/Projects/blog/myblog.dev.repo/content/static/posts"
    local image_name = os.date("%Y%m%d%H%M%S") .. ".png" -- Use timestamp as image name
    local image_path = image_directory .. "/" .. image_name
    -- Save the image from the clipboard (Use 'pngpaste' for macOS or 'xclip' for Linux)
    -- For macOS:
    vim.api.nvim_command("silent !pngpaste " .. image_path)
    -- For Linux:
    -- vim.api.nvim_command("silent !xclip -selection clipboard -t image/png -o > " .. image_path)
    -- Insert markdown image tag
    local image_tag = "![](/static/posts/" .. image_name .. ")"
    vim.api.nvim_put({image_tag}, "l", false, true)
end

return M
