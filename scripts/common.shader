// To the extent possible under law, Unvanquished Development has waived all
// copyright and related or neighboring rights to this shader file.
// 
// For modifications, it is recommended that you copy this file into your map's
// file space and, inside the shader name, replace "common" with your map's
// short name. If you do so, please remove this header.
// 
// This file is a part of the Unvanquished installation and can change with
// every release.

// These shaders were written for Unvanquished, which runs on the Daemon
// engine. Daemon uses a modified XreaL renderer, so most shaders should also
// work with other XreaL based games. The shaders are compatible with q3map2.

// An area entirely sealed off by closed doors that have an areaportal brush
// inside of them won't be rendered.
// Can be used to improve the ingame performance of a map.
// Currently not properly supported by the Daemon engine. (2014-03)
textures/common/areaportal
{
	qer_editorimage textures/radiant/areaportal

	qer_trans 0.4

	surfaceparm areaportal
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm structural
	surfaceparm trans
}

// A solid wall that always appears pitch black.
textures/common/black
{
	qer_editorimage textures/radiant/black

	surfaceparm nolightmap
	surfaceparm nomarks

	diffuseMap textures/radiant/black_d
}

// Clips bots but lets everything else pass.
// Currently not supported by the Daemon engine. (2014-03)
textures/common/botclip
{
	qer_editorimage textures/radiant/botclip

	qer_trans 0.4

	surfaceparm botclip
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

// A solid surface that doesn't get rendered but blocks visibility checks.
// Usually used on the non-visible sides of regular brushes.
textures/common/caulk
{
	qer_editorimage textures/radiant/caulk

	surfaceparm nodraw
}

// Landing on this invisible surface will prevent fall damage.
textures/common/cushion
{
	qer_editorimage textures/radiant/cushion

	qer_nocarve
	qer_trans 0.5

	surfaceparm nodamage
	surfaceparm nodraw
	surfaceparm trans
}

// Tells bots not to enter the given area.
// Currently not supported by the Daemon engine. (2014-03)
textures/common/donotenter
{
	qer_editorimage textures/radiant/donotenter

	qer_trans 0.5

	surfaceparm donotenter
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

// Clips both players and projectiles.
// Basically an invisible wall that won't receive bullet marks.
// "surfaceparm playerclip" is commented out because while it makes the editor
// aware that this is a clip, the engine would let bullets and missiles pass.
// Also known as "full_clip" and "weapclip".
textures/common/fullclip
{
	qer_editorimage textures/radiant/fullclip

	qer_trans 0.4

	surfaceparm nodraw
	//surfaceparm playerclip // see comment above shader
	surfaceparm trans
}

// Tells the map compiler to split the bsp tree along this surface.
// Can be used to optimize visibility and thus ingame performance.
textures/common/hint
{
	qer_editorimage textures/radiant/hint

	qer_nocarve
	qer_trans 0.3

	surfaceparm hint
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm structural
	surfaceparm trans
}

// Used on all other surfaces of a "hint" brush.
textures/common/hintskip
{
	qer_editorimage textures/radiant/hintskip

	qer_nocarve
	qer_trans 0.3

	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm skip
	surfaceparm structural
	surfaceparm trans
}

// A solid, transparent surface that receives marks.
// Behaves like a perfectly translucent window, can be used as a placeholder.
textures/common/invisible
{
	qer_editorimage textures/radiant/invisible

	qer_trans 0.4

	surfaceparm nolightmap
	surfaceparm trans

	{
		map textures/radiant/transparent_d
		alphaFunc GE128
	}
}

// An invsible surface that players can climb on.
// Use this around your actual ladder geometry.
textures/common/ladder
{
	qer_editorimage textures/radiant/ladder

	qer_trans 0.5

	surfaceparm ladder
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm trans
}

// Sets lightgrid boundaries.
// Can reduce compile time and compiled map size if used on a brush around the
// area where models can exist on the map.
textures/common/lightgrid
{
	qer_editorimage textures/radiant/lightgrid

	qer_trans 0.5

	surfaceparm detail
	surfaceparm lightgrid
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

// Like "clip", but creates metal step sounds when walking on top.
textures/common/metalclip
{
	qer_editorimage textures/radiant/metalclip

	qer_trans 0.4

	surfaceparm metalsteps
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm trans
}

// Technically the same as portal.
textures/common/mirror
{
	qer_editorimage textures/radiant/mirror

	surfaceparm nolightmap

	portal

	{
		map textures/radiant/transparent_d
		blendfunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		depthWrite
	}
}

// A solid surface that will not be rendered.
// Can be used on the sides of girders and fences.
// If you want to be able to shoot through the fence, use "clip" instead.
textures/common/nodraw
{
	qer_editorimage textures/radiant/nodraw

	qer_trans 0.4

	surfaceparm nodraw
	surfaceparm trans
}

// A non-solid surface that will not be rendered.
// Can be used on the sides of decal brushes.
textures/common/nodrawnonsolid
{
	qer_editorimage textures/radiant/nodrawnonsolid

	qer_trans 0.4

	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

// Corpses don't remain in this area.
textures/common/nodrop
{
	qer_editorimage textures/radiant/nodrop

	qer_nocarve
	qer_trans 0.5

	surfaceparm nodraw
	surfaceparm nodrop
	surfaceparm nonsolid
	surfaceparm trans
}

// textures/common/notex.* is used by radiant based editors, don't remove it

// Used on a small cube, the center defines the origin of the brush group.
textures/common/origin
{
	qer_editorimage textures/radiant/origin

	qer_nocarve
	qer_trans 0.5

	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm origin
	surfaceparm trans
}

// Clips players (including bots) but lets everything else pass.
// Also known as "clip".
textures/common/playerclip
{
	qer_editorimage textures/radiant/playerclip

	qer_trans 0.4

	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm trans
}

textures/common/portal
{
	qer_editorimage textures/radiant/portal

	surfaceparm nolightmap

	portal

	{
		map textures/radiant/transparent_d.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		depthWrite
	}
}

// textures/common/shadernotex.* is used by radiant based editors, don't remove it

textures/common/slick
{
	qer_editorimage textures/radiant/slick

	qer_trans 0.5

	surfaceparm nodraw
	surfaceparm slick
	surfaceparm trans
}

textures/common/terrain
{
	qer_editorimage textures/radiant/terrain

	q3map_terrain

	surfaceparm nodraw
}

// Also known as "terrain2".
textures/common/terrain_dust
{
	qer_editorimage textures/radiant/terrain_dust

	q3map_terrain

	surfaceparm dust
	surfaceparm nodraw
}

// Defines trigger areas.
textures/common/trigger
{
	qer_editorimage textures/radiant/trigger

	qer_nocarve
	qer_trans 0.5

	surfaceparm nodraw
}

// Unvanquished specific: Disallows building to both teams.
textures/common/nobuild
{
	qer_editorimage textures/radiant/nobuild

	qer_trans 0.5

	surfaceparm nobuild
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

// Unvanquished specific: Disallows building to the alien team.
textures/common/noalienbuild
{
	qer_editorimage textures/radiant/noalienbuild

	qer_trans 0.5

	surfaceparm noalienbuild
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm trans
}

// Unvanquished specific: Disallows building to the human team.
textures/common/nohumanbuild
{
	qer_editorimage textures/radiant/nohumanbuild

	qer_trans 0.5

	surfaceparm nodraw
	surfaceparm nohumanbuild
	surfaceparm nonsolid
	surfaceparm trans
}

