GDPC                                                                            2   D   res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex        `       QP3,� !�9��c���Z@   res://.import/camera.png-fefcd16c00485a67906703016c27ad02.stex  @"      v       l���o �~�P����@   res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex   �%      F       �::�-nFe|�"�q��@   res://.import/guard.png-4aaaba1cb4844e211472820102650bb7.stex   �(      F       �y��6Z�$�䇐<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex`�      �      &�y���ڞu;>��.p@   res://.import/platform.png-142545e511ee3dc0001ca4ee19b1deaa.stex�+      R       �Z̄ēn��c�� @   res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex  �.      B       qd���<��t&�8[H   res://.import/shadow_rectangle.png-30a1f663fefcfbd2845c13915599430f.stex�1      B       ��kCFtD��E��Y�[H   res://.import/shadow_triangle.png-b815a6e42c7d56096a269762bc38c98d.stex  5      �>      �$��y��S�Q�h5�T   res://Main.tscn �      �      �?���HԺ$/�����,   res://assets/textures/background.png.import p      �      v��00M
������7c,(   res://assets/textures/camera.png.import �"      �      BaW��T��q�Z�?ð](   res://assets/textures/floor.png.import  �%      �      ��į�}���7��S6z(   res://assets/textures/guard.png.import  �(      �      $Ƙ-�ܳ��Y�W�_,   res://assets/textures/platform.png.import    ,      �      �Y� ���6��tc��](   res://assets/textures/player.png.import /      �      ^��M������e^�54   res://assets/textures/shadow_rectangle.png.import    2      �      ��CG#*u����T0   res://assets/textures/shadow_triangle.png.import�s      �      Qn�y1s�s��i��"   res://default_env.tres  �v      �       um�`�N��<*ỳ�8(   res://entities/AbstractState.gd.remap   �      1       ��{�.��H����
    res://entities/AbstractState.gdcpw      
      �Z&F��L�Wݙ}>,   res://entities/AbstractStateMachine.gd.remap0�      8       ������$����`j .(   res://entities/AbstractStateMachine.gdc �z      V	      �k��On��E�"{��$   res://entities/PathfindAstar.tscn   ��      �      �9���?����u�D�(   res://entities/enemies/Camera.gd.remap  p�      2       �Z*)�dǞ�D�B]��$   res://entities/enemies/Camera.gdc   І      x      2
����	��"S�-$   res://entities/enemies/Camera.tscn  P�      �      DX�4�bO�3�5W�`�(   res://entities/enemies/Guard.gd.remap   ��      1       GZ���3Mh�b�N=    res://entities/enemies/Guard.gdc��      �      ˈ�QO�50g��P�p$   res://entities/enemies/Guard.tscn   ��      �      �d�&� uߊd%�>�a(   res://entities/player/IdleState.gd.remap��      4       |ކ�WG�r�0�S��Zf$   res://entities/player/IdleState.gdc @�      f      Φ�%u\����5�(   res://entities/player/JumpState.gd.remap0�      4       �Mw�/�\�]�'7$   res://entities/player/JumpState.gdc ��      �      6`�,��#B�o
H�k��(   res://entities/player/Player.gd.remap   p�      1       %���p	2I:{X���    res://entities/player/Player.gdcp�      J      `n£�<f��%Q>$   res://entities/player/Player.tscn   ��      }      ����V���'��M!g��,   res://entities/player/StateMachine.gd.remap ��      7       H�k�ɲ�7W�\ܨ�(   res://entities/player/StateMachine.gdc  @�      C      J�\.+�g��4�(   res://entities/player/WalkState.gd.remap��      4       /�M����ߓ���_$   res://entities/player/WalkState.gdc ��      E      p?Q�!�"6r��sY��    res://entities/world/Floor.tscn �      �      ����̵��6��Q��$   res://entities/world/Limit_V.tscn   ��            |�l���nw��}
�$   res://entities/world/Platform.tscn  а      �      
I��w1)�#ނ�H$   res://entities/world/Shadow.gd.remap0�      0       N�L]EM����� v��    res://entities/world/Shadow.gdc в      &      �' H���K*Q���`�    res://entities/world/Shadow.tscn �      X      Q���i؆��m�~
]��   res://icon.png  `�      �      G1?��z�c��vN��   res://icon.png.import   @�      �      ��fe��6�B��^ U�   res://project.binaryP�      ?      P֢s)�dހg"4mhr�    [gd_scene load_steps=12 format=2]

[ext_resource path="res://assets/textures/background.png" type="Texture" id=1]
[ext_resource path="res://entities/player/Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://entities/world/Limit_V.tscn" type="PackedScene" id=4]
[ext_resource path="res://entities/enemies/Camera.tscn" type="PackedScene" id=5]
[ext_resource path="res://entities/world/Platform.tscn" type="PackedScene" id=6]
[ext_resource path="res://entities/enemies/Guard.tscn" type="PackedScene" id=7]
[ext_resource path="res://entities/world/Shadow.tscn" type="PackedScene" id=8]
[ext_resource path="res://assets/textures/floor.png" type="Texture" id=9]

[sub_resource type="GDScript" id=1]

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 64, 64, 0, 64, 0, 0, 64, 0 )

[sub_resource type="TileSet" id=2]
0/name = "floor.png 0"
0/texture = ExtResource( 9 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 3 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="Main" type="Node"]
script = SubResource( 1 )

[node name="CanvasLayer" type="CanvasLayer" parent="."]
layer = -1

[node name="TextureRect" type="TextureRect" parent="CanvasLayer"]
margin_top = -3.0
margin_right = 1023.0
margin_bottom = 597.0
texture = ExtResource( 1 )
expand = true

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 284, 474 )
collision_layer = 3

[node name="Camera2D" type="Camera2D" parent="Player"]
offset = Vector2( 0, -200 )
current = true
limit_left = 0

[node name="Environment" type="Node" parent="."]

[node name="Limit_V" parent="Environment" instance=ExtResource( 4 )]

[node name="Limit_V2" parent="Environment" instance=ExtResource( 4 )]
position = Vector2( 5174, 0 )

[node name="Platform" parent="Environment" instance=ExtResource( 6 )]
position = Vector2( 295, 373 )

[node name="TextEdit" type="TextEdit" parent="Environment"]
margin_left = 1148.0
margin_top = 284.0
margin_right = 1252.0
margin_bottom = 355.0
text = " ACA NO TE VE
 		 ||||
		 \\ / \\ /"

[node name="Camera" parent="." instance=ExtResource( 5 )]
position = Vector2( 279, 163 )

[node name="Guard" parent="." instance=ExtResource( 7 )]
position = Vector2( 1444, 478 )

[node name="Shadow" parent="." instance=ExtResource( 8 )]
position = Vector2( 1199, 462 )

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 2 )
format = 1
tile_data = PoolIntArray( 589824, 0, 0, 589825, 0, 0, 589826, 0, 0, 589827, 0, 0, 589828, 0, 0, 589829, 0, 0, 589830, 0, 0, 589831, 0, 0, 589832, 0, 0, 589833, 0, 0, 589834, 0, 0, 589835, 0, 0, 589836, 0, 0, 589837, 0, 0, 589838, 0, 0, 589839, 0, 0, 589840, 0, 0, 589841, 0, 0, 589842, 0, 0, 589843, 0, 0, 589844, 0, 0, 589845, 0, 0, 589846, 0, 0, 589847, 0, 0, 589848, 0, 0, 589849, 0, 0, 589850, 0, 0, 589851, 0, 0, 589852, 0, 0, 589853, 0, 0, 589854, 0, 0, 589855, 0, 0, 589856, 0, 0, 589857, 0, 0, 589858, 0, 0, 589859, 0, 0, 589860, 0, 0, 589861, 0, 0, 589862, 0, 0, 589863, 0, 0, 589864, 0, 0, 589865, 0, 0, 589866, 0, 0, 589867, 0, 0, 589868, 0, 0, 589869, 0, 0, 589870, 0, 0, 589871, 0, 0, 589872, 0, 0, 589873, 0, 0, 589874, 0, 0, 589875, 0, 0, 589876, 0, 0, 589877, 0, 0, 589878, 0, 0, 589879, 0, 0, 589880, 0, 0, 589881, 0, 0, 589882, 0, 0, 589883, 0, 0, 589884, 0, 0, 589885, 0, 0, 589886, 0, 0, 589887, 0, 0, 589888, 0, 0, 589889, 0, 0, 589890, 0, 0, 589891, 0, 0, 589892, 0, 0, 589893, 0, 0, 589894, 0, 0, 589895, 0, 0, 589896, 0, 0, 589897, 0, 0, 589898, 0, 0, 589899, 0, 0, 589900, 0, 0, 589901, 0, 0, 589902, 0, 0, 589903, 0, 0 )
       GDST   X           D   WEBPRIFF8   WEBPVP8L+   /Õ ������I���dD�3�����?��������?�g [remap]

importer="texture"
type="StreamTexture"
path="res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/background.png"
dest_files=[ "res://.import/background.png-db55ec47224fbca7de3496d6823058f9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST"               Z   WEBPRIFFN   WEBPVP8LA   /!@'  T�-N �����!HB�l�@�/j�Hrt"�cp��5��� 5*�hL���~4Ԩ            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/camera.png-fefcd16c00485a67906703016c27ad02.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/camera.png"
dest_files=[ "res://.import/camera.png-fefcd16c00485a67906703016c27ad02.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDSTB   B            *   WEBPRIFF   WEBPVP8L   /A@ �؊������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/floor.png"
dest_files=[ "res://.import/floor.png-bc19f2b688ab458014752317127027f7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDSTB   B            *   WEBPRIFF   WEBPVP8L   /A@ P��������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/guard.png-4aaaba1cb4844e211472820102650bb7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/guard.png"
dest_files=[ "res://.import/guard.png-4aaaba1cb4844e211472820102650bb7.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST!   A            6   WEBPRIFF*   WEBPVP8L   /   0[��Ȥm�_�jagD���                [remap]

importer="texture"
type="StreamTexture"
path="res://.import/platform.png-142545e511ee3dc0001ca4ee19b1deaa.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/platform.png"
dest_files=[ "res://.import/platform.png-142545e511ee3dc0001ca4ee19b1deaa.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST@   @            &   WEBPRIFF   WEBPVP8L   /?� �DD�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/player.png"
dest_files=[ "res://.import/player.png-965fb12be218bfe81cbf4b66ef213928.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST2   F            &   WEBPRIFF   WEBPVP8L   /1@DD�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/shadow_rectangle.png-30a1f663fefcfbd2845c13915599430f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/shadow_rectangle.png"
dest_files=[ "res://.import/shadow_rectangle.png-30a1f663fefcfbd2845c13915599430f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST!  �           �>  WEBPRIFF�>  WEBPVP8L�>  / ��(nI���6��3"&��R	�MDO�������)����8��AD\q)m�eY�>mOm1|���|����V�K+��Z��hC(KƧ�cʢ����x3�q�/��ǃ׳ra��䗈ѣ�6� I�y :���ӹ�=m��4����ZZ
��Pc����3�{i���*7�	<ɡ��:8�������6oUv@�i���������d#��֢��ޤ�c���ji��ي=In#I�D� t�}��? +�c"���aLb�9FFd��r�
�E����nPN0a@�N9eyY�Ah7@������>�h3&a@����o��"Ү�������@Ym�2��{��I��[o�f��w9DF�9bӷ�u�!�K�C9d��I��t̙���X�ߑq���?��I���c��Pw�;jɌ�����v���7���w��K:>1g�';����F��~����y]���l����8oOY����!����z��o&ɷ���o~S��;��ɨ?9)�8\b�Er�����v�N��j�����#6⧠�W�S:�贓�����9G �9���:���I�"������#'%��.�^��1 �v�&�����g;��;��a ~R����+��w�o�OO�sw��{_�R�/t%�?����z�������b~"���"Ņ�w�.�%'���[_�uY������V45�ϚE��&6����t|R���'���'1���5i"#��"9m�?V93��ce5ir�]o�����$�_�?��:���Xe�]o��d4����F��$�l*�a6��a��\g���O��#~k���E���������G�9ѷגi�?n�]�^D���ԓ��\�Ԥ���eEEճ�E|㛩I���O/�#���߈��V���ȿ%9c�?��I��Ѳ��;�v��E���w���o�_؛�I�����c��u����%�+��+^U$/__�!16�~1�V[ݑL�'���$W]E��0�]�a��O�������L{�!1v�j��Ɉ����h�ŕ���1VVXX5�]��vOI:>�yOv$S�[���j�d��S$/�_���8g��j��l�o[�j�{�+��n���۝t�t�j� �\�2�g&�y�χ��"3W��7�&�+B�#�'S��e�OM:>���a��8����~Ś�G͇����~��r���%#rI�L"��*�'�K�գ�	6�^���7�.�۞�Lz~�=�q�w��ޗ)^������"yٞ�N8�G���-�q��Lz~��q��$��_���ݭ�>2����Cϧ�7Պ��DY?�gsk�O�r������y�zR��r��ke{�Ͼ)E������h=���?�gw�M�2��T$'=��y�ON�7�/�U�R6��l�I����}�t%=���V��<������I��]Ͽ��d�ֲJ��cW�����ݙ��</���M:>�i��>v�>yd�vbR�d�!��Zr�Ҳ����5��.wՒ���R���N��id[�'�/��W^���#�7O�Z�d��_$�l|�4����WV�F�φ)6�ԝt;/���N�o�I#e��lX1�$��{_8�7ɩ�:h����0u���H�~�p{������ްv6�aŊOHj��B�}W=������ςڵ�1|Q-9񑼠;rRR{��ڵ�a;K24������6|��4�l̜92ҿ_$��mK,)~o����1��S�t������.�����@�ocd�ݔ4>{��o���䦉��hcK��:}��ɚ�Y_�4���n�"�쿍[�4�dI����;vL�>6k����H6��4�6)v,��h�-��EY����Y";ї~��)EZ���,Kۋdە�"�-)�_,kF��W�����I��>*�z���iaE�f7i��,ήF�3g�`Iyy2�_l&k���vcmҼo����;4��Q�k���YR��K�9"O��HJ����H�N,-��Iq�|Yw��9�˥$]pa ��V�����x�w(.��!#yKR�vm�Y��"�坲>�Ҹl.u9ԗ��i��~�:�{�!�lZ�+"�.iܻ���e#Y��s�\q6���"Y7�%����nY6[��e2�*i=�%�íd���l�֔�8�mE����4�-)>�.+.n���P���V2�b��.���[�<�1EF|kR�9�T9w4���eM�ӰV8���ۗ�=�%��X����Gݼ��,ǔ��Is��ҕ��L֜:%OǺe�
��Ɇ3Y��bC���|Y��w����#%��Y�;�J�~�C��Wcn�E��-I�����ۋ��˺��hշ-�-�k%���70��{�-�M����qks����R��d�[e}ƦQ������,��D��&�'�/~���eZ�m���y����w��������t���4�g�Ɖ�6�1)>�.kٲ�*����I�7�����/X�O�����ޚ��,��(���ˊ��C�R�^�j+|5�dWW%��~U��J�Z5BFtc��9�\$v6�M#e�X�A-X��.����,��oJ_�uW-ТV�Y��=�����UG�X�CM[�@��ɖ�,#�-I�W�Z�`����s��3YV;;�<����Ӧ�X�hR�����_\$�P֟v��t�2���}EV�2����:`���3�s���I�//7/��L6�*��i�=�t�l&G��ٔ4v�nF��t�W���#Y��o%C��"Cg�4g��/�6_^��'�3e%$Lғ\ʜN��v��.%�O<!Aq�I�I2�6%ŧ�˓��F�q��I.-i�K�>}}��Y��\�4�k���4�>i�β]O3���'�����pw4�-c�WlK�bG��E�bt�"eр����x�񎷒�,R�t��2�Hn����ޚ�w/�S�9��9�h+�a��>JZ��S�(O;*�1󑤹���9�H֏�)ҍ��=�d��,�M�M����˛�9���6�ۛe��}ɚ#G��EII2�;�d���ߚw̗5o^�6|ۢ$�w~ �:=`g�������S\���W��䶤��^���Hn9_V�K��K��%��:=a�^����_Q���6䊈�O�t{��F�~d�K���7d�w7�u����.i��-���	}��~�*�{0=c���կ��=hZ\��o�ɶ���?�%�����צh��-J�i������C���SO����}�d�oN�;;���'���_�5š�d9��o_�����mxnӷ���ڏc��ꤹg��H�i&kN���}b��d8��G��c6�!i�ꔵb�m�O�G>J�z4=gG[��h��3.&FF�֤����c�O�W�����:k��㎷������"��s�b�u֌�ۜ;�����H��]�8����F�}�5�u'ғ6�>��>�ږi;kƍ�I����&��������t���4k�n$7M�G���Ƨ�e-[��]ri(�"=k'����_�L�%#}s��gz�{w�͗ˊ����(Q��[��+�aJ�ڿ_������ݔ4vN�2��7�M#e��lRr��mw3�0����MI󮻨��@��6�*�{�˽�%���ۄ�����q�l�J��ڜ���Z�`�f�rι�d���m��9��J�63(,LFjsR����g�߯eM+�f2���Yu$=p#�����+�e�2�d�7$ͻ���s�g|ӧ�3	�t��+��E7&���eed$h3����W�#w��<(C���� #s{�l��+�?��ϔ��0A)PN:�J_J����:�������	27~��wZ�L#�8Q�����@�>}�d���Ѝ�I�{�R׵D�)�0�����u7��'Np�/��,�Q�Q$[��b[�bG��%Kfh/Ki=���d��߷D)�X��5K����ȶ��V�֤�~��E�C�կ���0=w%�G�nQ���N�솤���{9�H6�9�HgIr�ӣ���9���ڤ�{����$��q���I߾����%k_{M��rSR���"�y�7�oM�;��JJ��Q\J�y����J�ީ�d���%).�u��䶤��ݫٷɶɲ�\�ͥ�a�[��Wӳ�����i)��n�K�,�n�ݍd��(��g��p�m$�F��Y�4��e��i(�_�������KV���l�IX\���"Ŷwz��?ܐ���S�N;=�<���I��O�S:ɺ0�)�;;�^��"�:^V�C#�Z�N�޾"k�����ڤ�������Jօm|d���{����a�$&+K���F�3Y�g�& +++F#���GCI둬;�J�~�#Y�ȸ��[���WKO�/fˊ���޶(1'�h%��Bl`0E���(6�6NF�w���
;�汲��4�4�:ݺ�ɺY16�>i��M]�2-�6n|U��wt�0����>v�M�HK�a��l��
��Ƥ�t��e�"4����=��?�e'����_�L�!#�5i�>����Q$7_.+"b�Α�D��o%C�d���_o="B��9rFȈlJ;'V���䦑���h)9�첫�l8�g�I㮻����u��ַ}I�'�L>r>ё����#,%EF������pjR�?WVJ�G�[��J���Ii����g���o\&��v���I��E�y��?m�����0�'&�}}�Ouܠd�W��Hj�;Y�}W-�鍲�dhs2�y�s��ć3im�o�:��1G�P��P��Lb{�3:tH��1i���ox)�̴��w̔5g���@�������eR��I�׿n�R�WL�1�))�r`r3��"�t��	Z�]�췿�L�c&���N�ܷ��K4��I�����Lv��L֟8�@���]w�(|��l�{&=��$Ŏ���,��U�5``0i=�Ip�Z��������w�ɶ+���[�b���f��G�S������� ��>JZ�>j���#֍��ņ����2rv5�g���"�֩ӣ��bͩ���Z�4�졮c�&�n��ڤ��e�\o_���Q="*)I��'�d�WN�I�NY��E�.%颋I�����T2���).��%#ykR��^I��V$�Η��r�s��V��լ��tu�z�a�lڃ+*�.i��]Y��6�u##\�C�C=�r��6�u#Ya�gɲ��4��~�׫�����p_���W�􆰄���z�{Er���k��>�w���PN;ݟ<�x�����8tG���֤�c~%���(�u���B�C���Y_�浬Ȼ�6�ۻ���,m�^�4�8�2K�n&k�x�CW8�G#?9?�Iz3�bW����M��;����Τ�#�d��?��'�s�q2z^��|v�=ɶٲbb�i��-�q/{�3��Q&�?��\��F70�#��iI��C��"�2Vָ5�A��=XO��!����%�ݻ��&M;0�︤������}�d�����Gt���`0.�%'��$���I��ke��Ei��֛t}9��N$C/�$M/��G��83)^�}򗹽H>6]VT�u�@�g<ә��"M����׾&J���|OƑ���Eۛ靍d�hY��h���������,�!i�uusRl}��}_�1{Ns����KV���]�X�F2��P$�nL���G����JI)fh�����i��d��)z�.Ŋ�h<5)���<X��"��TYaž`�uQ��˿:��yi"��UI�C	S�X}]v�Q|BR{��f�;_h$���B��VuK,�%3���Xdc�ص��]jY~]v�՛t|*M�^�K�t��W�V-]�-��[�ܒw�_V�Z�YwC�Z�z�+��~���=��?��Z��nH�''ś�7�Oɦ(k�!�]�!��h=���4!_�4�}�zCβ��)���/�ӌ�f������*4k&c�Zr��Ӕ��%i��PYg�u�e��S��$�קI�?�����YV��*T����"yٞfE�֤xųe�p�w��(��:�:����i�CI�u�9A��ޢ�'�bzR��`�b}W#��DY߉��D�[aE=��@��M�I�W\A��3,���}\��45{�#���߉���5h #��"����Q}zR;o��3�8�Rۢ4x׻�I�Mir�zW�}��P�,��_�d4�<�+���W�˟)�8m�u���Τ������)I�'?I��~�ڐr��%�w�5?b�%�}T��vʀ2��[K�(M����3^V�~'Yh��Ք���4E[ݑL��/��Ί�r���W���5G�^���_�I'd��mQNyӛ�I׷�$����t�e�?�*&��I�ڑf��kk�O�uP��+J���(2�7i���Ԥ�c�^TK,�X�qI�ۛ'��'�=��(+�B�^2�o�%���&jǏOQ{�hY}�T��zm��/���4U{�3���������PAF��I���\i:�H��WV�
�YY�(^�Rg���4Y��'��җTPXY��'�bf����fK�Erڊ��`a�;G݃�'��Kӵ��%�~�z�YX��OI�W�o���G=�r��XY��k'��[jɉk҄��Ĥ��@Y��fa��Ї�I�Ҕ�Ů�w�\���ov���ӓ�5;�3�V$3��u�a߲�B�Þ�\g�sg��}ޛt~��SB���o�8|rR�hM����zr��e}+Ăj��^�֓��i��'����z!�,��o}ۗt|"Mܞ�H�~�[!Vԯ�5�zc���L3���x�PY��ʂj������o��ۛ�)���M��a��n�����Ӓ�u{�;=�+��6���a�R�WOz�#��M��}ۗt~����J갛�_g$�w�o�俣����_��juP���Zr������II���eu�d)u�mwo�qm����L��[+�g�j��8�HN��j;㈯�d��B���׺���)ܻ=I�׾&HI��>�ɨ=���0�.,���I�%�F����'}�$�pJR��Ǩ���
j�	?��ߗ�q�ד���'	�P�6�nvs-9e�y8%��y��-*XBm>�IO��/��܋�I�O~��2��)P����Wə;�I]g%ū��Ua��3H��g;�ޟ��������g�7l��3����Ej�4�"ג�+Vf����A֓)�����I����4���3�@���sV�έ�H�_�� k�z�d�W$�?�|:yF�⼃eիw�U���f[w���4��ؕt�v�zJ�Uw����'�+4�^U$/[_�aq�!N]��Τ��iJ�E_�9g��αl�82-���Psj�=�d����j���j�ԥiR��Ԥv�xY�d���唤�iZ�dG���_:ǚ)d0�)�3�6�j�L��<WVPP	��m��7���[��nkw����R�,��_�d�H�sͬs���e���XzR��G;���IS�殮���G���rT�tZR����2.�'�-Y"�j9�W/�o�%'<�&w'NHj���գ�qK��v�%�צ���Τ�����V�9�8�/O�W<��j~E��lOY���e��E9�U�v&=s��Þ��+_q�b�J��8~jR��P3,~A���xY�,�Nu+��'��!M�~8.�_q��,�>��$��m��~��L��>��\�N��Zr�Si�wjFR{k��ЩS�rI�m��$]_NӼW�St�v�N��^����<+)^��y���"9sgY���:�(��tg�{W����M:?�i�>VG��d����.l4���ZKN^^V�>G�>��rW=9aq�������n��iby��ko_�1{ns-�z�7�>VG�&Md��_$�nH���S���}e5iR��h������4��ԝt�r�&��.Ŋ�h:%)^������"9eSYŊ�bUtS����#�'M���M:��F1��U�m�'$�w�m�徳�����]�Yu��[bI-��$M�Jg$�K.�^��,�n���M:>�&}Ow$�wݥ�U�W������-ͺ�Ӓ��e�v�����y�+]I��Ӵoķۯ|�iJ���'��䤸`�y�A���tY~q�C�8u�x����1M�~�K��(��ZXq~��I��9ͼ������~q�C�-d��TKN�{��?5)./�E�J�C����$�ץ�ߺΤ��۵��U�$��Er֞f_�˒�[ʪT�{�A�R�/t%=?Jӿ�{���WI��b�ɨ���.9�����L_Y��b,�F1�VZYO����JR�5�z1�,��|�S���HK��;������\�F2b�ג�+[U3���ce5jT�
�4z�{�I�Mi�zg����j��������$g�
��$9{cY�X ����v&}w�e��I�'?I�!�,�!�ʏOj�k��QK�_��+�ƀ2��SK�=�b��Oj�9TV�~�X ��MM:�JK�Uɔy��3�~Q����W$�Yϴ�_V�x���N9�����E���殤���ܝt}�[NQ�L��_��QsFR��H�!��"9����E�x!1�ew$S����SSt̞M��S/��LM���zh�@=��x�(3�JH��ן�XZ�����1ZVHH%/d���I�gҒ�Τ�g?b��U�"#t��Y�g'9g��J���q�(U^�rg���(��'��җTR�1��������"v~��\YV�sL��{Ѓ�d�}iY�Ӵ���P�v��9~��I��e���Y�d�E�1���Aƹ7ג�¬�Ĥ����j��0���>�K��OK��]I�~�����#���qFR�����qn�����������E9b�u�I��iq��'�������i!ߑq��"��ִ:�.��8�Ჾf�5Q���z2�?-��ӓ���R/����������>��#���i��5���(r⺴@�NJ���j֬���l���I�7����"�7߬�y��R�d4�L���n����Hfn.�T�=̰.J��g=��uZ�}ݛt|�J)�̰._�QzbR�d~�$��Z2ciY{t2�juQ�ĒzrⲴL��Ĥ���N�N�L0u_�$��jk:��{���ۯV-]�V$�ok��������Z�~fnSjm��+�%-նt']7ި�2��������M�[+ɉk���0S��0u���H��M�����c�l�ker�o��I��\�����?fnUk�F�����字�)I�-��jժ����S��$�קۋ�Ez~�S�̬Bժ�h{u-9sW+��̤x�ֲ�T)`NR�=�Τ��i��?�I�g?��2ȜTHF���vQ�5����XUV�A���ԭ���L} -��35�_q��aR*T8-EǬ�l��H�-X`�9U�3d�W$�?ٺ9yzR�w��3�8�lJP����I�i��ZW�}�m�P̦�r2μ<)^������"y�3e�`2ԭ��3�3-�>�+��k��^��tJ(W>-��g��3��Z2��G%�M���k�qK�����v�DYC��d�cϔ���|[ݑL��s�T�Z2��ə����3��5�CPPP	�(J���7����ܖ����2��J��_�s� ��#�"�� ��O���<֑L�MZ�};5������4�*U:-�_�h�ՓiK�dU��GF���d���"������ի�	&Q��v�%�s�2nmG�w�z�C�U� ���ZGM�����u�	?3{"�
�z�+��AZ�m�N�n��	J������Ӓ��ZI���'��Y���)B�J+��q�R����Q/������)I�?淖�?\O����"̞�N�dD..���b�zFR�x��N�L�N��'��bZνؕ�̝���S  @F�YI񪭭��W�Y;�
(`ք(�y�3�3-�>�M:?�YJ�YR@F�����F+�xk-9y��!&M�u������?iI�������z!ML��}I�칭���I߂B̚_4i"#��"9噴�k8%)�0TV�&�0i�l��'�1-�6v%]�ܢ�9��/~!��Ԥx���U����Me��v3[�)�ȑә�ޓv{z��k������m7��Hj����}G-9�/e���d��M�mn�%3���]ɉI�K���4ӥ�n�{��O���S)z�[�ůNݯ+�S7���OKj��)���̓��������{�I�78M�3O�dԝ��o}�/(���.�/�4i���1�u$}H�����8��Z�(	~��I�����������~q�I�V�d$�\KNy,-񎝒��4^V�L�V;��I:�K��u�I���ka��REF뫊�]������rKY*�e~�(U^�bW���eއ=I��׫�Ę1dTMOQ�x�u6���e�cz4�Q���z2uQZ���&�Y�����)Pp\R���z+��q��+��h�HF��"����V93)�+�Q� 3#Ni�Ͷ��ki��ZW����k�ęq2�NrξV[��"9{cYq&�9q��Xӑ��<-����t^s���F\@`z���G[o�wԒ�ęA�##~i=9nYZ��6-�]:^��db�󵯧&�ӒoUG2u�<�DP��s�)�3׶�N�Y�8��`

*aFD)Ao{�+��VZ�m�N�n�Y�2Ȍ�*!#xfR��h��֒3�*1Ȅ�R�-��?�Ҳo�Ͻ��bJD�(9.���Ѻ3�_O�.Yb�Q)$DF��G�<-�ӓ�;�R���ig_����{�3��N!�C�J�d��Ir���^����ʪP���`P*�╮�{nZ�}؝t}�+*(3�PDF�̤v�h�/v~��\QV���ɠ�!ՓiH˿�%�+������`(R45��Z��+�UO�.Z�`&թS'��xK��x2m�������h0t������>�M�>����w%�?���A�����yfR�f[{@��w�u��̀0�u�u&=��M�=I��>�%��'��)I������ZKNz��|a&@�0u�,�'���6���"�K/�^X3S ,_~o�q՜����:������5�� ��O�������Ლ5+a4{�;�)�nL[a����o[���+�J�h����i/�~]���\V�{$sݔRk��Hz�6��z����/%�n�\���(=1�]2�� ���dƒ���ĝ�M�mn�%'.M�a#�s��z�NK��}՛t\�6�r:��{��-��;�4���c��efR�vwY��V$9����Ʈ��;iKlKO�u�NS��a~2N������䤧�*�����.[vG2�޴)�wJ�1{6�Z%i���ӓ��i[li=��h����6md_XKNy�}!pJR�p��V��%em��ޓt^�6ƞ�Lz~�3���B'�$��5Er�v�����zkYժJ������|W������{�t}��)Q�UT!'g$��6���kɌ�e�J�D�˒UO����1�Ԥ��Q/�Q�U�pZR����Vv$�.�\4h #z~��\��Puz������5jtL��4ȕ۝t}5m��֕t�v�FJ\� ���$��C���H^���c�$C���<ՙ�ݙ��>�K:���zq��). p|R{�X{��;k��=&.Y
2d�/�'�-I�d%Ӓ�e�e5�$C���I�Ui�lU=�r�=�Q��� ��8�H�l��Y���F��F�%�޷-J�[��J�nNeow']���JT��������Iqn��b�tj�*��D�˖ݑL�u�*�zj���S/�W�U�dZR�l��¸��L[�DT�S)$DF������YvlzR{�hY�zUHrB>�����ڴ]�s�;�Jn�T�$#tN���������9{˪P�H���E����_�҆��I�7���C�3����v���E2sEYEIJ'���Vv&�-L[f�Ӓ�Y��g蔴�MM곖�g�]ّ�-ZĐ�թS'������X�6ͪg$���N�:$)�>�qO�u}�6[ߕ���G:%'�:JF�YI����*��v��W���κ��玴q��'����(a�FXGOIj6�9�k�)e��d4S�̲z2}Q�:�OO�^J������S���s�;rgw$S�WX�Q�Y3������Y��I����:�D��l��=I׍i�lSW�s�-�J.�*%�yfR�������"��lY%J�,�RJ���(��˴���7�3G	�[��+���I����A��VKf,)k�nIB�^��pG-��״�V2#���m��V'i�'�7�&m��t$��ܣ[��W���������"gg&��v�U����/A��ɦ�������;��Fu���_����S��������ue�%���$�[eUG�wo�H�ۗt̞M��I@�����~ٜv��#>���K�Uk�FF�-��䁴�8%��y��-����찣'��l�L{�3��v-F{��U����$g�l7�:+)^���j�
��b�j��Jz���>�M���N5%f�SHF�����F���E���e��5�Q���z���҆�jR�5�z1Fq1�
�%��-���ɴ�Ō�5�;�Hf�hO���珕ՠA�hl��h�m�I�WӦچ�"�?��J�hlX���s����v���I��PV@�(�0L�Zk;S�ݙ��v�%��^K�èlX@`zR{�X�J익d�����X-�A�����%ic����~�DYC�(�𵯧$���ڪ�d�y��R�j�0�-�3�[�g%�k����R��(�����N���6�6w%�7�,H�ME��Q{fR��hw񧣙�e��E�E�[eUG2垴��7%��*�E����J����e����e�严KE�����Ɉ���L_�6�F����ѲBB*��¾�E_�yM�b��L�~�s!���T�>'��7��4��䜡�*U���J�׼֕tߖ6�>�N���5���Q�_q���ӓ����2��d�ʲ�"FA]�ԭ��#9nA�f+8.�ϚE��.���LM�Z�>S6��L��1
�ҥ��W�����*m�U���/)�K��QP��}ܛt}>m���Jz�#]F?dt�����^���"9kWY{�j߶(�{�3�#m���I���N�6�	+ #pJR���nc\XKN(k��QL�0u�,�'����6���~�e�;kTV��/��������I߽�
͔h�LF��"9���VwrR\0\�Yg��4�jkw�uc�r�ؕt�z��F/{�(!�yfR�nw{N���g�*Q�K��J���v$�w�M�/{��9s�Pz�Fz�!�䤤��e�:eo�%3������z=����Z2�iۭdFR{�۩ףΨ��{z��k��[NG���_�19�^==G�x����tZR����:u�F	J��6v%=�I[o[����Fu���E�2�OI�7�����x]Y~	��6	�VYՑ��O�o{�$�gS/��(#�'$���i�ɹ�����/atqR�62o�%'?���F�O�L�ժU�QE��v�$��Kp�u&=wܡ�h�'�$���Er��v�γ���[˪V��� F9�E/v%=s�܇=I����2dt�'g$���A�ŵd��
4�Q���%S�O�pES���Y��d���%��m��zr܂��~פ������C�3����j��K���I�ܞ��+i#nCW��h�$\��NF�9Er��v�����Me�p�3$�{�S�Iߝi+ngo��k��^B�%/�w�OOjo;�^}{-���c.uA�����丿�͸_�%��'ʊ�����͔��ci;��d�o~#��V*((�`0�-�3״՜�玌�

*s�~ۢm��;��fڐ{�+����)1���_�d�L��<׎yM��9XV��KTX���Vw$S~��侚�t\u�b�.Y1�J�%���ۓ�דi˖��T�&#��"9~yڔ���5VVXX�KT��>�K:�M�rk���d��K�'�$#��Z���K/O�W�U��ߥ&B9i�]I�����I�7��.5�8yz��u��L��ג����3\b�D�˒ՑL[���
�%�Y��g�tɉ8��Ԥ~Ų���Փ�����r]�Ȉ\\Kf�J�s�3��ōC�N����t��'�I�ui{�����'?��ҲW�r2��J�Womj}u�������^��~J���w&=�'m�}֓���w���R�o/�$��P5o�%'?Z�^�.���[ny=�~ڢ+���/��z�Z\2���wJ�1{n{T��d���w�8�U+�o*��֦M�ړ��M��jѢ�%��V[����6�Ʈ���[��4�9��g$�kw�Ou��Hfn)������E9$GNG��˴Q��7�3G��ŮK�NLj�,k�*�������<=.r�������dƒ�UWzbR{�ۨף�E�K��ޤ�i��I߼yz\���Փ���"9��v��3��u{ʪS��"W�ot��9m�m�N�����sq���OF��E�7�_�/(��ו���Ū���ꎤ��i��������)�.V�v�៞��;�+��z2����]�j�S�ȢZr��i����I�-o�^�S.Z�v�ٓt~6m�=י��q�v�}jԐ�~n����]���k��u�)?���(5^�BW���m��{���w�s��GF͉I�-��-�-��ħ��Q�E�Q��,Y�dꢴqW45�5�z1�.B1�웖ԯH[w+�ɴ?�Q���F�d��P$3W�wU�L����j�(�b��4��G=Iח���+]I����p1I8FF��I�j�
��H��XV@�E$"A�Ӟ�L��H�w;�����o�%D\T�9v|R{�h�W������	�:2�'S��6�~����?QVD�i���}=5阝��;�L���E\<~S���ȿ%9cM{X��$玔u�i��D)u6�ܝt}+m�m�J�o��iJ�� �72��J����ν�H�z���D]¢ԭ��#���������~�Uԋ
�(D��iI�������E2�ou1�&c��Y������I��e��T������R��?�V޿:�)w�%���TIF��"9{C{Y��I񊡲�T�߶(�6�ԕ�|7m�םt�x�*ʠ)�Oƈo��k7���Hf�*�o��#B���H������K:��?�7���矚���6��Y�dj�A�1=zȈ�{-��2m�U�����`Yݺ\@=>�qo�������+��яt�p~t�12z�J��-�i-�,��v�����r���HzoO�z�{�����]�~$��iI�M��j�7ɩe� �h�O�r����Ei[�?=�_~9�]�~�c_R�����܏֓�?�A؅P�E�o*��֦�������e5kV�h��{�ί���W;���}O���+%J�h����no�>�(r��J���|꥔x��I�]isoWo��O)��:�z}EFɉI���n��Ɍ�e���<j�Kݝ�%',N�{�LOj�|'�z�q^���W=I�5i�/�#���Χ�4����"9eS;\өI���e�q��	J�M6u'ݷ�-�-�I��7:CI8?��pjR���=.t~���LY��p^�IP���;��{�&_A_�1{6�Z�'	<!��kn�\�{�)N����p~�Ԧ��ą����i����"�'�j����N;{��Ϥ��g:����\���I'�h{u�������x�ֲN9��_�����;�����ܞ��K_r�����qrFR\4�^�����TY����&q��p=�r_���iJR������/�+Tx\��i��zr�����4�c���D�݉Ӓ��e5kvܟ��Ei���ί��]I�~����?�:AF�+��e{��z_���\�q	�!A�Zk;S�ݙ��v�%��^K�ß�p��%��o�%'<���?��� #qy=��$m��LK�M�e0�I��|w\��Ѵ��hG2���e�s�Ԫ%�8�H�l����6AAAe����V[��������]I���
R���!edԞQ�x�s�|�k��������{ғ���i��˾����ސ~hH����e��>��Z2u�2C��)�zw-��p��;2-���PY����|ዾ�sN��[ۙ������w�N9E�����u�g^���_�I'4"�S^�ZW�}[�l[w�u�NR"F�(&��Iq��c 8x^���dYE��)B�J+;�irL`Ӓ�Y���eu��%��96���d���:Ɉ\\Kf��1�U�Hj��եK�:}�ޤ�s�`�v&�?��.J�� �g)^��؁�W��v�Un���ؙ��$��iO���/*'( #pJR{��c	j.�%�,/�� y������S���'��/����)I���c�W֓��k3`���E��/}���^|wI\x��f���%Q��<�0W=%�-�hӦM��E�]l��m�<���1����V��^�ַ^��c[�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/shadow_triangle.png-b815a6e42c7d56096a269762bc38c98d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/textures/shadow_triangle.png"
dest_files=[ "res://.import/shadow_triangle.png-b815a6e42c7d56096a269762bc38c98d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            M      ���Ӷ���   �����¶�   �������Ҷ���   ��������������Ӷ   ����Ķ��   ���¶���   �����������¶���   ����¶��   ���������¶�   �����Ӷ�   ����׶��   ���������������������Ҷ�   ��������Ӷ��   �   
Base interface for all states: it doesn't do anything in itself
but forces us to pass the right arguments to the methods below
and makes sure every State object had all of these methods.
                            	   	   
   
                                                "      $      %      &      /      1      2      3      <      >      ?      @      I      K       Y3YY;�  YYYB�  P�  QYYY0�  PQV�  .YYY0�  PQV�  .YYY0�  P�  V�  QV�  .YYY0�	  P�
  V�  QV�  .YYY0�  P�  V�  QV�  .Y`      GDSC   %   
   ?   9     ���Ӷ���   ������������Ҷ��   ������������Ӷ��   �����������   ���������ƶ�   �����������ݶ���   ������Ӷ   ���������Ӷ�   ���������¶�   �����¶�   ��������Ҷ��   �������޶���   ����Ҷ��   �����������ض���   ������¶   ���������Ӷ�   �������Ӷ���   ����������Ӷ   ���������¶�   ����Ķ��   ����Ӷ��   ������������������Ŷ   ����������������¶��   �����¶�   ����¶��   ���������¶�   �����������¶���   ���������������Ŷ���   ����׶��   �����Ӷ�   ���������������������Ҷ�   ��������Ӷ��   ������������Ӷ��   ���������Ӷ�   ���¶���   ��������¶��   ����������ڶ   �   
Base interface for a generic state machine
It handles initializing, setting the machine active or not
delegating _physics_process, _input calls to the State nodes,
and changing the current/active state.
   �   
You must set a starting node from the inspector or on
the node that inherits from this state machine interface
If you don't the game will crash (on purpose, so you won't 
forget to initialize the state machine)
                        finished      _change_state               previous      state_changed                         	      
                                       $      )      2      3      :      ?      J      R      ]      c      k      l       s   !   x   "      #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <     =     >     ?     @     A     B     C   #  D   *  E   +  F   1  G   7  H   Y3YYB�  P�  QYY�  Y8P�  Q;�  Y;�  NOYY;�  V�  LMY;�  �  Y;�  V�  �  9�  YY0�  P�	  QV�  &�  V�  �  �
  P�  QT�  PQ�  )�  �  PQV�  �  T�  P�  RR�  Q�  �  T�	  �	  �  �  P�  P�  QQYY0�  P�  QV�  �  P�  Q�  �  T�  P�  Q�  �  �  L�  M�  �  T�  PQYY0�  P�  V�  QV�  �  �  �  �  P�  Q�  �  P�  Q�  &�  V�  �  LM�  �  �  YY0�  P�  V�  QV�  �  T�  P�  QYY0�  P�  V�  QV�  �  T�  P�  QYY0�  P�  V�  QV�  &�  V�  .�  �  T�  P�  QYY0�   P�!  QV�  &�  V�  .�  �  T�"  PQ�  �  &�!  �  V�  �  T�#  PQ�  (V�  �  L�  M�  L�!  M�  �  �  �  L�  M�  �$  P�	  R�  Q�  �  &�!  �  V�  �  T�  PQY`          [gd_scene load_steps=4 format=2]

[ext_resource path="res://entities/AstarTilemap.gd" type="Script" id=1]
[ext_resource path="res://assets/textures/gray_square.png" type="Texture" id=2]

[sub_resource type="TileSet" id=1]
0/name = "gray_square.png 0"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape_one_way = false
0/shape_one_way_margin = 0.0
0/shapes = [  ]
0/z_index = 0

[node name="PathfindAstar" type="TileMap"]
tile_set = SubResource( 1 )
format = 1
script = ExtResource( 1 )
        GDSC         .   �      �����Ӷ�   ����������������������Ŷ   ���������������������¶�   ��������ض��   �������������Ҷ�   �����¶�   ������¶   �����϶�   ������򶶶   �������Ŷ���   ����׶��   ���������������Ŷ���   ����������ٶ   �������ڶ���   ��������������ض   ������Ҷ   �����������Ѷ���   �����������Ķ���   �������������Ķ�   �������ׄ�������������Ҷ   ���϶���   �������ׄ������������Ҷ�                   ?       -      A                                                                    	       
   &      +      ,      3      4      >      ?      J      N      O      U      Y      _      d      k      p      w      {      |      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   3YY;�  Y;�  Y;�  �  Y;�  �  Y;�  �  Y;�  YY0�  PQV�  �  W�  YY0�	  P�
  QV�  �  �  �  P�  �
  Q�  �  &�  �  �  	�  V�  �  �  �  �  &�  �  V�  �  �  �  &�  �  V�  �  �  �  &�  
�  V�  �  �  �  &�  	�  V�  �  �  �  �  T�  �  �  �  &�  �  V�  �  T�  P�  P�  T�  QQ�  �  T�  �  �  &�  T�  PQ�  T�  PQ�  V�  �  T�  PQYY0�  P�  QV�  &�  �  V�  �  �  �  �  T�  �  �  Y0�  P�  QV�  &�  �  V�  �  �  �  �  T�  �  Y`        [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/textures/camera.png" type="Texture" id=1]
[ext_resource path="res://entities/enemies/Camera.gd" type="Script" id=2]
[ext_resource path="res://assets/textures/shadow_triangle.png" type="Texture" id=3]

[node name="Camera" type="Sprite"]
position = Vector2( 278, 125.5 )
scale = Vector2( 0.705882, 2.83333 )
texture = ExtResource( 1 )
script = ExtResource( 2 )

[node name="RayCast2D" type="RayCast2D" parent="."]

[node name="Area2D" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Area2D"]
position = Vector2( 1.98773, -3.41968 )
scale = Vector2( 0.996066, 1.05042 )
polygon = PoolVector2Array( -14.796, 11.1515, -290.715, 94.4797, 285.301, 93.8076, 13.6493, 11.1515 )

[node name="Sprite" type="Sprite" parent="Area2D"]
position = Vector2( 1.52588e-05, 49.2354 )
scale = Vector2( 0.726904, 0.133945 )
texture = ExtResource( 3 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
[connection signal="body_exited" from="Area2D" to="." method="_on_Area2D_body_exited"]
           GDSC         &   �      ������������τ�   ������¶   �����¶�   ����¶��   ��������ض��   �������������Ҷ�   �������������ض�   �����϶�   ������򶶶   �������Ŷ���   ����׶��   ��������������ض   ζ��   ����Ӷ��   ����������ٶ   �������ڶ���   ������Ҷ   �����������Ѷ���   �����������Ķ���   �������������Ķ�   �������ׄ�������������Ҷ   ���϶���   �������ׄ������������Ҷ�                      �?   ^     &                                                                   	      
   %      *      +      2      3      <      =      C      O      U      Y      ^      g      h      n      z      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   3YY;�  Y;�  Y;�  �  Y;�  �  Y;�  �  Y;�  YY0�  PQV�  �  W�  YY0�	  P�
  QVY�  �  �  P�  �  Q�  �  &�  	�  V�  T�  T�  P�  �  Q�  &�  �  V�  �  �  �  �  �  �  T�  T�  �  Y�  &�  V�  �  T�  P�  P�  T�  QQ�  �  T�  �  �  &�  T�  PQ�  T�  PQ�  V�  �  T�  PQ�  Y0�  P�  QV�  &�  V�  �  �  �  Y0�  P�  QV�  &�  �  V�  �  �  �  T�  �  Y`     [gd_scene load_steps=5 format=2]

[ext_resource path="res://assets/textures/shadow_triangle.png" type="Texture" id=1]
[ext_resource path="res://assets/textures/guard.png" type="Texture" id=2]
[ext_resource path="res://entities/enemies/Guard.gd" type="Script" id=3]

[sub_resource type="CapsuleShape2D" id=1]
radius = 32.9999
height = 0.594727

[node name="Guard" type="KinematicBody2D"]
position = Vector2( 1249, 478 )
scale = Vector2( 0.636364, 1.68182 )
script = ExtResource( 3 )

[node name="Body" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="ViewField" type="Sprite" parent="."]
position = Vector2( -210.689, -19.7637 )
rotation = 1.5708
scale = Vector2( 0.22197, 0.732852 )
texture = ExtResource( 1 )

[node name="RayCast2D" type="RayCast2D" parent="."]

[node name="Area2D" type="Area2D" parent="."]
position = Vector2( 3.1427, 1.78378 )
rotation = 4.22485e-15
scale = Vector2( 1, 0.426212 )
collision_layer = 0
collision_mask = 2

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Area2D"]
polygon = PoolVector2Array( 28.2859, -47.4323, -465.143, 150.667, -466.714, -259.483 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -3.05176e-05 )
shape = SubResource( 1 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
[connection signal="body_exited" from="Area2D" to="." method="_on_Area2D_body_exited"]
            GDSC            R      �����������¶���   ����¶��   ���������¶�   ����������������Ҷ��   ����������ڶ   �����¶�   ����������Ķ   �����Ӷ�   ����׶��   ���������������������ض�   ��������������¶      res://entities/AbstractState.gd    	   move_left      
   move_right        finished      walk      jump                               #      2      9      :   	   C   
   I      O      P      3YY0P�  V�  QV�  &�  T�  P�  Q�  T�  P�  QV�  �  P�  R�  Q�  &�  T�  P�  Q�  T�  PQV�  �  P�  R�  QYY0�  P�  V�  QV�  �  T�	  PQ�  �  T�
  PQYY`          GDSC            ^      ����Ķ��   �����¶�   �������϶���   ϶��   ����������   �����Ӷ�   ����׶��   �����������������¶�   �������������ض�   ���������������������ض�   ��������������¶   ����������Ķ   ����������ڶ      res://entities/AbstractState.gd              finished      walk      idle                   	                        $      %   	   -   
   3      4      :      ;      C      K      R      U      \      3YY0PQV�  �  T�  T�  �  T�  YY0�  P�  V�  QV�  �  T�  PQ�  �  &�  T�  �  V�  �  T�	  PQ�  �  �  T�
  PQ�  �  &�  T�  PQV�  &�  T�  �  V�  �  P�  R�  Q�  (V�  �  P�  R�  QY`           GDSC      	   !   �      ������������τ�   �����Ķ�   ����������������   ������������ⶶ�   ���������������   ����������   �������   �������������ض�   ��������������ض   ������������Ӷ��   �����������Ӷ���   �������϶���   ��������   �������������ض�   �����϶�   ���������¶�   �������������Ķ�   �������ض���   ��������������¶   ϶��   �������������Ӷ�   �涶   ���������������������ض�   ζ��   �����������������¶�   ����¶��   ����������������Ҷ��     �A     D  �������?     �C                      
   move_right     	   move_left                                        '      2      =   	   >   
   F      M      N      W      ^      _      e      l      m      s      y      z      �      �      �      �      �      �      �      �      �      �       �   !   3Y2�  YY8P�  Q;�  V�  Y8P�  Q;�  V�  �  Y8P�  Q;�  V�  �  Y8P�  Q;�  V�  �  Y8P�  Q;�  V�  �  YY5;�  T�  Y5;�	  W�
  YY;�  V�  �  T�  Y;�  V�  �  YY0�  PQV�  �	  T�  PQ�  Y0�  PQV�  T�  �  �  Y0�  PQV�  �  T�  �  �  �  P�  R�  T�  QYY0�  PQV�  �  T�  �  P�  T�  R�  R�  Q&�  P�  T�  Q�  (�  YY0�  PQV�  �  �  P�  T�  P�  QQ�  P�  T�  P�  QQ�  &�  �  V�  �  T�  �5  P�  T�  P�  �  QR�  R�  QY`      [gd_scene load_steps=8 format=2]

[ext_resource path="res://assets/textures/player.png" type="Texture" id=1]
[ext_resource path="res://entities/player/Player.gd" type="Script" id=2]
[ext_resource path="res://entities/player/StateMachine.gd" type="Script" id=3]
[ext_resource path="res://entities/player/IdleState.gd" type="Script" id=4]
[ext_resource path="res://entities/player/WalkState.gd" type="Script" id=5]
[ext_resource path="res://entities/player/JumpState.gd" type="Script" id=6]

[sub_resource type="CapsuleShape2D" id=1]
radius = 26.0
height = 70.0

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.8125, 1.92188 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="StateMachine" type="Node" parent="."]
script = ExtResource( 3 )

[node name="Idle" type="Node" parent="StateMachine"]
script = ExtResource( 4 )

[node name="Walk" type="Node" parent="StateMachine"]
script = ExtResource( 5 )

[node name="Jump" type="Node" parent="StateMachine"]
script = ExtResource( 6 )
   GDSC         
   #      �����϶�   ���������ƶ�   ���Ӷ���   ���ݶ���   ���ƶ���   &   res://entities/AbstractStateMachine.gd        idle      walk      jump                   	                                 	   !   
   3YY0PQV�  �  N�  �  VW�  R�  �  VW�  R�  �  VW�  Y�  OY`             GDSC            J      �����������¶���   ����¶��   ���������¶�   ����������������Ҷ��   �����¶�   ����������Ķ   ����������ڶ   �����Ӷ�   ����׶��   �����������������¶�   ��������������¶   �������������ض�      res://entities/AbstractState.gd       jump      finished             idle                               "      #      $      -   	   3   
   9      A      H      3YY0P�  V�  QV�  &�  T�  P�  Q�  T�  PQV�  �  P�  R�  QYYY0�  P�  V�  QV�  �  T�	  PQ�  �  T�
  PQ�  &�  T�  �  V�  �  P�  R�  QY`           [gd_scene load_steps=3 format=2]

[ext_resource path="res://assets/textures/floor.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 512, 33 )

[node name="Floor" type="StaticBody2D"]
position = Vector2( 512, 568 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 15.5152, 1 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
              [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 29.5, 49999 )

[node name="Limit_V" type="StaticBody2D"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( -30.5, -49398 )
shape = SubResource( 1 )
      [gd_scene load_steps=3 format=2]

[ext_resource path="res://assets/textures/platform.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 106, 15 )

[node name="Platform" type="StaticBody2D"]
position = Vector2( 720, 393 )

[node name="Sprite" type="Sprite" parent="."]
rotation = 1.5708
scale = Vector2( 0.954547, 3.3 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
one_way_collision = true
          GDSC            &      �����Ӷ�   �������ׄ�������������Ҷ   ���϶���   ����������������������¶   �������ׄ������������Ҷ�                                      
                        $      3YY0�  P�  QV�  �  T�  PR�  QYY0�  P�  QV�  �  T�  PR�  QY`          [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/textures/shadow_rectangle.png" type="Texture" id=1]
[ext_resource path="res://entities/world/Shadow.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 25.0001, 34.7603 )

[node name="Shadow" type="Sprite"]
position = Vector2( 930, 462 )
scale = Vector2( 1.96, 2.08571 )
texture = ExtResource( 1 )
script = ExtResource( 2 )

[node name="Area2D" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
position = Vector2( -6.10352e-05, 0.239731 )
scale = Vector2( 1, 1 )
shape = SubResource( 1 )

[connection signal="body_entered" from="Area2D" to="." method="_on_Area2D_body_entered"]
[connection signal="body_exited" from="Area2D" to="." method="_on_Area2D_body_exited"]
        GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://entities/AbstractState.gdc"
               [remap]

path="res://entities/AbstractStateMachine.gdc"
        [remap]

path="res://entities/enemies/Camera.gdc"
              [remap]

path="res://entities/enemies/Guard.gdc"
               [remap]

path="res://entities/player/IdleState.gdc"
            [remap]

path="res://entities/player/JumpState.gdc"
            [remap]

path="res://entities/player/Player.gdc"
               [remap]

path="res://entities/player/StateMachine.gdc"
         [remap]

path="res://entities/player/WalkState.gdc"
            [remap]

path="res://entities/world/Shadow.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      _global_script_classes�                     base      KinematicBody2D       class         Player        language      GDScript      path      res://entities/player/Player.gd    _global_script_class_icons                Player            application/config/name      	   Ipv-museo      application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres   