
call ddc#custom#patch_global('completionMenu', 'pum.vim')

call ddc#custom#patch_global('sources', ['around','vim-lsp', 'buffer'])
call ddc#custom#patch_global('sourceOptions', {
			\ '_': {
				\   'matchers': ['matcher_fuzzy'],
				\   'sorters': ['sorter_fuzzy'],
				\   'converters': ['converter_remove_overlap', 'converter_fuzzy'],
				\},
			\ 'vim-lsp': {
				\   'matchers': ['matcher_head'],
				\   'mark': 'Lsp',
				\ },
			\ 'around': {'mark': 'A'},
			\ 'buffer': {'mark': 'Buf'},
				\})

"call ddc#custom#patch_filetype(['c'], 'sources', ['around', 'clangd','vim-lsp'])
"call ddc#custom#patch_filetype(['c'], 'sourceOptions', {
"	      \ 'clangd': {'mark': 'C'},
"      \ })

call ddc#custom#patch_global('filterParams', {
			\ 'converter_fuzzy': {
				\     'hlGroup': 'SpellBad'
				\   },
			\ 'buffer': {
				\   'requireSameFiletype': v:false,
				\   'fromAltBuf': v:true,
				\   'forceCollect': v:true,
				\ },
				\ })

call ddc#enable()

call popup_preview#enable()

"call signature_help#enable()
let g:lsp_signature_help_enabled = 0
"let g:lsp_signature_help_config = {
"			\ 'style': "virtual",
"			\}
"let g:lsp_signature_help_config = {
"			\ 'style': "currentLabelOnly",
"			\}

inoremap <C-z>   <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <C-a>   <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-y>   <Cmd>call pum#map#confirm()<CR>
inoremap <C-e>   <Cmd>call pum#map#cancel()<CR>
