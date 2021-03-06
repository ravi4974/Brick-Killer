GDPC                                                                               <   res://.import/ball.png-bc91096d257a7ab889f72eb03aef0a7c.stex�      A      V��*���?��\T@   res://.import/brick.png-e5b934862d723d35e311d8bb10977107.stex   �1      }      88 �կ+�Ša���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0:      U      -��`�0��x�5�[@   res://.import/paddle.png-2a911b567abf32cb67206a34d0146622.stex  �5            \��霤@�-b�ԑ`��   res://Mini Scenes/Ball.tscn P      b      ��L<����R�j_�g��   res://Mini Scenes/Brick.tscn�      �      &��.�,bY���{6_�   res://Scenes/World.tscn �
      �
      pu�#���؀V�A�֍   res://Scripts/Ball.gd.remap J      '       A������xE��   res://Scripts/Ball.gdc  �            �Z�v��/���$�y�    res://Scripts/Paddle.gd.remap   @J      )       ćQ��9#�D[P,   res://Scripts/Paddle.gdc�      L      2|x���
%��y��k<    res://Textures/ball.png.import  0/      �      ��)��Q6� s�[���    res://Textures/brick.png.import @3      �      O����]b�^���B�t    res://Textures/paddle.png.import�6      �      ���i��v>��;�   res://default_env.tres  �9      �       um�`�N��<*ỳ�8   res://icon.png  pJ      �      G1?��z�c��vN��   res://icon.png.import   �G      �      �����%��(#AB�   res://project.binary`W      �      ���3ME��U�MNV��{        [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scripts/Ball.gd" type="Script" id=1]
[ext_resource path="res://Textures/ball.png" type="Texture" id=2]

[sub_resource type="PhysicsMaterial" id=1]
friction = 0.0
bounce = 1.0

[sub_resource type="CircleShape2D" id=2]
radius = 6.0

[node name="Ball" type="RigidBody2D"]
physics_material_override = SubResource( 1 )
gravity_scale = 0.0
contacts_reported = 1
contact_monitor = true
linear_velocity = Vector2( 200, -200 )
linear_damp = 0.0
angular_damp = 0.0
script = ExtResource( 1 )
bricks_node_path = NodePath("../Bricks")

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.2, 0.2 )
texture = ExtResource( 2 )
__meta__ = {
"_edit_lock_": true
}

[node name="BallCollider" type="CollisionShape2D" parent="."]
scale = Vector2( 2, 2 )
shape = SubResource( 2 )
__meta__ = {
"_edit_lock_": true
}
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://Textures/brick.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 58.6317, 20.5733 )

[node name="Brick" type="StaticBody2D" groups=[
"Brick",
]]

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.72, 0.52 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
__meta__ = {
"_edit_lock_": true
}
 [gd_scene load_steps=5 format=2]

[ext_resource path="res://Textures/paddle.png" type="Texture" id=1]
[ext_resource path="res://Scripts/Paddle.gd" type="Script" id=3]
[ext_resource path="res://Mini Scenes/Brick.tscn" type="PackedScene" id=4]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 107.27, 11.9953 )

[node name="World" type="Node2D"]

[node name="Paddle" type="KinematicBody2D" parent="."]
position = Vector2( 501.449, 561.977 )
script = ExtResource( 3 )

[node name="Sprite" type="Sprite" parent="Paddle"]
scale = Vector2( 0.7, 0.7 )
texture = ExtResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="PaddleCollider" type="CollisionShape2D" parent="Paddle"]
shape = SubResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="Reference" type="Position2D" parent="Paddle"]
position = Vector2( 0, 56.0642 )

[node name="Walls" type="StaticBody2D" parent="."]
scale = Vector2( 640, 360 )

[node name="WallsCollider" type="CollisionPolygon2D" parent="Walls"]
position = Vector2( 0.805386, 0.838875 )
scale = Vector2( 0.465008, 1.50141 )
polygon = PoolVector2Array( -1.96173, 0.623235, -1.73996, 0.626935, -1.73324, -0.56084, 1.71428, -0.55714, 1.721, 0.612134, 1.91589, 0.615835, 1.92933, -0.671847, -1.94157, -0.671847 )

[node name="Bricks" type="Node2D" parent="."]

[node name="Brick" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 250.217, 151.329 )

[node name="Brick2" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 377.966, 149.831 )

[node name="Brick3" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 506.82, 149.831 )

[node name="Brick4" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 634.176, 149.831 )

[node name="Brick6" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 376.467, 206.766 )

[node name="Brick7" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 505.322, 206.766 )

[node name="Brick8" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 632.678, 206.766 )

[node name="Brick9" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 377.966, 94.3933 )

[node name="Brick10" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 506.82, 94.3933 )

[node name="Brick11" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 634.176, 94.3933 )

[node name="Brick5" parent="Bricks" instance=ExtResource( 4 )]
position = Vector2( 761.532, 149.831 )

[node name="RichTextLabel" type="RichTextLabel" parent="."]
visible = false
margin_left = 409.0
margin_top = 364.0
margin_right = 495.0
margin_bottom = 380.0
bbcode_enabled = true
bbcode_text = "[shake rate=15 level=10]Click To Start[/shake]"
text = "Click To Start"
__meta__ = {
"_edit_use_anchors_": false
}
     GDSC            �      ��������τ�   �������򶶶�   �������   ���������������Ŷ���   ����׶��   �����Ŷ�   �������������������Ŷ���   ���϶���   ����������ƶ   ���Ӷ���   �������Ӷ���   ����Ҷ��   ��������������϶   �����޶�   ��������Ӷ��   �������؄�   �������Ӷ���   ��������ض��   �������ض���   ��������������ض   �������϶���   ���������Ҷ�   ϶��   ����������������¶��   ��Ҷ   0u     �        Brick         Paddle     	   Reference         over                                                    	   #   
   ,      2      <      G      S      `      v      {      �      �      �      �      3YY:�  Y:�  �  YY0�  P�  QV�  �  ;�  �  PQ�  )�  �  V�  &�  T�  P�  QV�  �  T�	  PQ�  '�  T�
  PQ�  V�  ;�  T�  T�  PQ�  ;�  V�  �  T�  P�  Q�  ;�  V�  T�  �  T�  �  ;�  �  T�  PQ�4  P�  �  �  R�  �  Q�  �?  P�  Q�  T�  �  �  &T�  T�  T�  PQT�  T�  V�  �?  P�  Q�  T�	  PQY`          GDSC            y      ������������τ�   ���������Ӷ�   ���ڶ���   ����Ҷ��   �������϶���   ���������������Ŷ���   ����׶��   ��Ķ   ������������������������ض��   �������ض���   ζ��   �����¶�   ����¶��   ��������������������ض��   ���������Ҷ�   �����������ζ���   �����������   �������Ӷ���   �������Ӷ���   ���¶���   ��������Ҷ��      res://Mini Scenes/Ball.tscn    �                                                                        	      
   $      +      3      4      ;      E      S      [      j      w      3YYY:�  ?PQY;�  YY;�  �  Y;�  �  PQYY0�  P�  QV�  ;�  �  PQ�  �	  T�
  �  T�
  YY0�  P�  QV�  &�  4�  �  �  V�  &�  T�  PQ�  T�  �  V�  �  �  T�  PQ�  �  T�	  T�	  �  P�  R�  Q�  T�  PQT�  T�  P�  QY`    GDSTp   q           %  PNG �PNG

   IHDR   p   q   �'�   sRGB ���  �IDATx��ml���g������		���6p*N��*>5�rUM\���CpT�AEO��ꡞH�I��K�4*!�PU�T#��r�i� miZA�Il'޵�u��}�yvg�k�v�o����=3�;��o����>���t�9�|# �ܦ*����uc��6x�5�\�y��k�-�R@((- (R(�-�����/o���Qw\�Ţh��&#^����&���ⲯ�r��<��g��L��~d�I����a�4���I�5`T��l%*�Ƀ�@��>�Փ�w7i�*��oP�Z���NS�u��Y�Q��?Ӥ2x��t/�C�'��G� �C�CLp�U}�������+ӈx��
�z�Q�6js���0�6N ?s�h$����*�\Q���Xlݓ@�-���m��b�������yҹB�d�M9�B�O�Z�^)K���^�� O)2�F��	�5�?��ᮦ5ʊ	:xtΉ4B{�"�w4&�f����B&��uaC�O�2M�|�ji�|��F�	��N���W*�.�#�����mQ�'j�O�[��L��}���+��e�TJ�Tg&���G��������}iϏ��r⁮���W��CG��O�Vb'
�MD�S8 A��l�)=��T��I�:�Q�\:Kyz��
ω������՘xɨ
�>�=�]8t�H�������f�bR�ۿSz�w�zy���)O�S���f3�o���_�'��v�K/Y����g��9dT�n"����ݺ[z�w!��7�Jy�]f��Ε�>*�F6+���W��4��t�n9k
@P��E�_���� �� }[�Z�Y�R��3�ߦR� @�'|x.y�&�*�v	��󭡃��-�h�߶p��(����T������n�r�e��A�G�w�L~�����
���'`׾[?���w9o�t�i��HTK?�$aY׻�J��]��nTf��f�����q�n1L�N�4�T��K�[�����`cm�v��jy��O�{$�7��]Tg&)N�q��_��n`��� �؉���$p���V!�Y�]�| ��0�/�]R�.7�z���� �T��T'y إu�-�0���@�Va"�=�|��'�;>��R�N���R���Q�Ө� 0"bƁS��\��S�{��E}���Ae��ć9лu7�m�[��m2=[ �W��ކ�*�R�<	os���-��~q�8t�q\O�<��@~���n�r�'�����1&E�|���Ϸ�sۮ�����N͂{�^�>�˃�>P�~5=�;}2������_��>��A�+o�j���CG�4�i��/ �@^.�}�g��Iez�RYj��A8 �;�˝����)�(�x��$�##[�!�'@~�}��X�lZR�^�񨕧>��S����e�[�رq��c��.q�ɵ�ҏ!��l�z�q~A|U^ ���.���J������Kq�(�f}0�D^��v����M�f;ɛ�9�Fo�?G"<z}:��0��+'� ��=��y��oBgyC��hU'"�^пD�|"�����6�_�p/,y�Xxá���s��S��V�!�q�$��9��~��#��{-U�gZea3�{��E���z
W$�V�\~{�Fo��[������e�����]sʰ�ʒx��$<�E~��x�,(�X��mW	�x�O n8t�<��*-� � 
;�!�7�
��P���x�-&��NA\���g�\�qm?E���nM�"��A2�[�G�y�Ñ��D���"���ב���l�b4j�L�������6�5�p��?7U,�����D������a��ؘ<����J�	bU>�r;@���M�@��+����=�+�*~�W���և�ҫ�ބ6��nݢS��:�Ĩ�?$�����:�9��j���7�M���zn9�+��#	k��ʒ+��W�pӓ<+���k,�	$���΅
w����2�B�r;ʶT�/�y�#R�^R�>P����G�$���� �M� �z�9Q�;T�k1�nI� �@6�uYw���Ƞ�g��B� ӻ5i:�C��&ӻh�0.U� ��mk�Ą��ܨ�'���A��6�%�+�i"�ǹ�� "6,�ެ蠗�%m�u���c⠃"�f c�`����� 8GV�~�v~����Nˑ�3�Q�L�랈���T��\!ƻ��1��c��T��n�lz/�����	+�s�g�{�S���Bӕ�{� �D����R�k�*�B��n$����5*:$�����c���,���	k�s%P0����"���W�+Ε*/���.W"�
������-W�$7 �X��'�"��(���'�c"�JIn@b(
�D�F�����f&Y�F���jK��~}-Ӕ��+Q�0X}��W�4Q	�ǹ�#"o 4����7��Hn���y�x�z��n0�+�Z� �����'ALXW�F͵�ΙF��	@�R\ä%,����4�&���z5��i9�@H�`��J8$~�z�92����'�O	2��+���Z�-�"��jP����4�p��h��&Q�n�����fD�py�:;�v)LX�FT�wޢ�Q�͞O�E�!֯�Lw�c���	���Ī'0aaZN��DkF�V����L�M*��95�EM0,h���E�jTgh�fW?�	i�fiTg �ߍ�k	b�; ��{��Ƅp.�
'`i�3�Q|����@�x6i��F�J�l��ǚ�L�4:����*�P�_ʹ&t�9��޾�m�/?;�V�<=�4)���[A$k���3w��HPXN���UIl�\��>p���5'mVQ�9P����Ш�R���k�5��a~z�K@D\������wV:�	m�k��7ps
���_���pp��*L�f�SIzgV��̄�6��62���k�<ۨ��Ɣ�~`v�ؼ�	+�jp��<,"�"B�D�C������~�Ji�+������oa�p2H ����榱��͝����ez*�s+��J�\��Š_6��9�`b����5�cN�ĂN\�S*�5@q��Zy���i��'� ^�Sn_T�k��{ߢ~W�h��R
��=Jg�:�|x��<��杆�њ��,��u�d"�.Q�8C�xAN+�T]�%:�!�6y���*j�į�23�v��b�23��묶�r7*UT�s8^,;
|��[�lp�0�K��g �~Oy��K>��Jy�]f/�>X	f�k6�Q	�=��N�0��㧟eׇoan.kN����Zy/�MfzY"��9J�@ீ�
n�_oan;=ʂc��4�%�eh8S�˨T�f�'�@t�qT�_Z���%������1�0�OL�я"�O �s�N�.���xK^p��%-�����EG������bp�?�h�@�|�L��	�L̜�U�S�
"�B8R�^4�`�_�+��7&����⍃�V�Q��ٲ���,�&K�BX�S�8�j`��ı��{Q�Z:x4�'.�=P�]�| ��0�/��'��U�g�W�P�sb��؋\�Wx9y�%		%Ε�EV˓��x��ݤ��Ug&)N�A�� ����2
 ���N(q�����25{j���-���� �[��o�U�9Ԇef��V�r7F���v�c';��bYC��~�]�n��7V����'����)</sُ�]�=���_�~� UWAqE�4o�-G,S ����s_P;��s㰅�~l�[ا~cwufۨ���]v�[�F���o��z�7P8����G���I������F��Gb�j[��+�ʃ�>x"�ޭ����ܨ���j�%v�w�j�QyXE��ͮ�/��Q^}zq������:t$��Q/ֆ�j>��²ј=�;��߹�"R�Oyz<xv�6�������
��V�0�@��R����F'��< <��m*z��F����IO~Ǻ���6j�Kg)O�7�}xNUG�������u�_풼���妑x�j�4�A��T��I+�~Anu�3=[�����D�R)MR����6[�by\�����h?ר@�WNtO��r��N��b��V�^¬�����A2=[���W=�U�S�LS+_�Z�h���Q}�^h�R�p�t�Ki�/���_��c�uw2уJ��A��MлT�N��Gߛ��I�
���w]�Z�z�D�R�Tt������M�0?�5�B�~��?��ᮦ5ʪ�Q�.���J��݊ a�*(��Ԉ(���iR�T�T:�+�>�\?"bb���G��Z�iD<�z�F��ߨtfLUeTD���ϝQ0�gd�۪�+u�$�"7���ъ��YRACWȩ�a���0�����c�����(B9�o�X����Cƾ��v�RY�Z�M���	�ѱ�C�n0i8X�k���t/*�*\Z@��PP(��B��(ED��o!���˛x�a���a���ƃ��𳀸@�+��M�����P����    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ball.png-bc91096d257a7ab889f72eb03aef0a7c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/ball.png"
dest_files=[ "res://.import/ball.png-bc91096d257a7ab889f72eb03aef0a7c.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST�   Q           a  PNG �PNG

   IHDR   �   Q   \��   sRGB ���  IDATx��Ա� ��r:@�*�Gw��E@d��3ч���z??׳���8�ۙ;�sۺόI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$E���A�"HRI� I$)�$e9�m���3�C�F A��    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/brick.png-e5b934862d723d35e311d8bb10977107.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/brick.png"
dest_files=[ "res://.import/brick.png-e5b934862d723d35e311d8bb10977107.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST6  %           �   PNG �PNG

   IHDR  6   %   ȉ�(   sRGB ���   �IDATx��ֱ�0A�P;�}� 9R@`1}x��?k�{ �|O x��sΓ; ���c�؀ ar��6 G؀ar��6 G؀ar��6 G؀ar��6 G؀ar��6 G؀ar��6 G؀ar��6 G؀ar��6 �z���� ��9?s.W�t    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/paddle.png-2a911b567abf32cb67206a34d0146622.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Textures/paddle.png"
dest_files=[ "res://.import/paddle.png-2a911b567abf32cb67206a34d0146622.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scripts/Ball.gdc"
         [remap]

path="res://Scripts/Paddle.gdc"
       �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Bricks Killer      application/run/main_scene          res://Scenes/World.tscn    application/config/icon         res://icon.png  $   rendering/quality/driver/driver_name         GLES2   )   rendering/environment/default_environment          res://default_env.tres             