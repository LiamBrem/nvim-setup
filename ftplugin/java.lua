local jdtls = require("jdtls")

local root_dir = require("jdtls.setup").find_root({
  "pom.xml",
  "build.gradle",
  "settings.gradle",
  ".git",
})

if not root_dir then
  return
end

local workspace_folder = vim.fn.stdpath("data")
  .. "/jdtls-workspace/"
  .. vim.fn.fnamemodify(root_dir, ":p:h:t")

jdtls.start_or_attach({
  cmd = {
    vim.fn.stdpath("data") .. "/mason/bin/jdtls",
    "--java-executable",
    "/Library/Java/JavaVirtualMachines/jdk-22.jdk/Contents/Home/bin/java",
  },
  root_dir = root_dir,
  workspace_folder = workspace_folder,
})
