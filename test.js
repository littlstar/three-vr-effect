
const test = require('ava')
const three = require('three')
const vr = require('./')

test('adds VREffect', t => {
  vr(three)
  t.truthy(three.VREffect)
})
