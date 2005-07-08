indexing

	component:   "openEHR Common Archetype Model"
	
	description: "Constrainer type for 1:N relationships"
	keywords:    "archetype, common"
	
	design:      "openEHR Common Archetype Model 0.2"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2000-2004 The openEHR Foundation <http://www.openEHR.org>"
	license:     "See notice at bottom of class"

	file:        "$Source: C:/project/openehr/spec-dev/architecture/computable/eiffel/am/support/relationship/SCCS/s.c_rel_multiple.e $"
	revision:    "$Revision$"
	last_change: "$Date$"

deferred class C_REL_MULTIPLE[G]

inherit
	C_RELATIONSHIP

feature -- Access

	c_items: LIST[G]
			-- Items in list.
			
feature -- Status Report

	is_ordered: BOOLEAN	is
			-- Indicates an ordered list
		deferred
		end

	is_unique: BOOLEAN is
			-- Indicates unique membership
		deferred
		end

	valid_any: BOOLEAN is
			-- True if no items are supplied
		do
			Result := c_items = Void
		end
		
	is_empty: BOOLEAN is
			-- True if structure is empty
		do
			Result := c_items.is_empty
		end
		
invariant
	valid_any: c_items = Void implies valid_any
	c_items_validity: valid_any or else (c_items /= Void and then not c_items.is_empty)
	
end


--|
--| ***** BEGIN LICENSE BLOCK *****
--| Version: MPL 1.1/GPL 2.0/LGPL 2.1
--|
--| The contents of this file are subject to the Mozilla Public License Version
--| 1.1 (the 'License'); you may not use this file except in compliance with
--| the License. You may obtain a copy of the License at
--| http://www.mozilla.org/MPL/
--|
--| Software distributed under the License is distributed on an 'AS IS' basis,
--| WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
--| for the specific language governing rights and limitations under the
--| License.
--|
--| The Original Code is c_rel_multiple.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2004
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|
--| Alternatively, the contents of this file may be used under the terms of
--| either the GNU General Public License Version 2 or later (the 'GPL'), or
--| the GNU Lesser General Public License Version 2.1 or later (the 'LGPL'),
--| in which case the provisions of the GPL or the LGPL are applicable instead
--| of those above. If you wish to allow use of your version of this file only
--| under the terms of either the GPL or the LGPL, and not to allow others to
--| use your version of this file under the terms of the MPL, indicate your
--| decision by deleting the provisions above and replace them with the notice
--| and other provisions required by the GPL or the LGPL. If you do not delete
--| the provisions above, a recipient may use your version of this file under
--| the terms of any one of the MPL, the GPL or the LGPL.
--|
--| ***** END LICENSE BLOCK *****
--|
