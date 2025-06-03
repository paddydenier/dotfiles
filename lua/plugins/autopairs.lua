return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		local npairs = require("nvim-autopairs")

		npairs.setup({})

		-- Add custom LaTeX pair for \[ \]
		local Rule = require("nvim-autopairs.rule")
		npairs.add_rules({
			Rule("\\[", "\\]", "tex") -- apply only in LaTeX files
				:with_pair(function(opts)
					-- Only add closing if not followed by ']'
					local next_char = opts.line:sub(opts.col + 1, opts.col + 1)
					return next_char ~= "]"
				end)
				:with_move(function(opts)
					return opts.prev_char:match(".%]") ~= nil
				end),
			Rule("$ ", " $", "tex")
		})
	end,
}
