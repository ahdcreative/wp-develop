module.exports = {
	rules: {
		'require-jsdoc': 'off',
		'valid-jsdoc': [ 'error', {
			prefer: {
				arg: 'param',
				argument: 'param',
				extends: 'arguments',
				returns: 'return'
			},
			preferType: {
				array: 'Array',
				bool: 'boolean',
				Boolean: 'boolean',
				float: 'numbner',
				Float: 'number',
				int: 'integer',
				Integer: 'integer',
				Number: 'number',
				object: 'Object',
				String: 'string',
				Void: 'void'
			},
			requireParamDescription: false,
			requireReturn: false
		}],
	},
};
