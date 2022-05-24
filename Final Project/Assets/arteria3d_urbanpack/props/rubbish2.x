xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.19
// Website: http://www.unwrap3d.com
// Time: Mon Nov 23 12:30:44 2009

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 4800;
}

// Start of Frames

Frame Body {
   FrameTransformMatrix {
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000;;
   }

   Mesh staticMesh {
    52;
    -54.801849; -5.296602; -15.303349;,
    -52.196548; -5.433085; -21.530949;,
    -54.801849; -5.027271; -3.427339;,
    -52.195648; -4.886049; 2.799761;,
    35.669250; 1.302155; 17.551151;,
    49.208252; -4.454594; 21.824451;,
    30.296051; -4.057805; 39.320648;,
    40.690651; -4.132853; 36.011452;,
    29.099852; 0.710445; 15.483751;,
    24.038250; -4.060335; 39.209152;,
    21.841051; 0.847855; 13.161652;,
    17.368351; -4.078103; 38.425652;,
    15.142751; 2.188515; 11.210251;,
    10.783721; -4.131089; 36.089249;,
    3.881491; -4.242031; 36.531349;,
    8.245180; 2.920275; 9.059951;,
    -4.107949; -4.377569; 38.126755;,
    -1.501549; 1.008665; 5.442411;,
    -13.360249; -4.370569; 31.422953;,
    -11.859949; 3.246405; 0.323401;,
    -21.404049; -4.428888; 22.957951;,
    -22.319950; 3.193455; -4.374639;,
    -29.474751; -4.515202; 19.152052;,
    -31.536251; 4.333555; -8.412159;,
    -37.041050; -4.557193; 17.300451;,
    -40.772049; 3.982935; -12.034889;,
    -47.255249; 0.222315; -16.567150;,
    -46.142651; -4.714301; 10.372851;,
    38.159752; -1.479225; 5.457141;,
    47.643353; -5.191896; -13.145249;,
    54.801849; -4.743576; 8.040451;,
    50.130150; -5.018264; -3.030173;,
    31.356750; -1.834205; 3.272861;,
    39.799652; -5.242949; -17.533150;,
    24.464750; 1.258325; 0.488251;,
    31.961651; -5.300141; -20.197550;,
    18.109352; 4.713965; -1.763479;,
    24.397551; -5.362226; -24.943850;,
    10.533111; 5.841285; -4.381019;,
    17.364052; -5.521685; -31.975248;,
    -1.513539; 2.904015; -7.748809;,
    -2.261809; -5.822625; -38.497749;,
    -12.568049; 4.278686; -13.281649;,
    -13.695349; -5.768965; -36.131851;,
    -22.807049; 2.253445; -17.908150;,
    -22.858950; -5.771295; -36.234749;,
    -32.021851; 1.188695; -21.943748;,
    -32.611149; -5.841285; -39.320648;,
    -41.130348; -2.591525; -24.170050;,
    -41.774750; -5.747975; -35.206146;,
    -46.142651; -5.609575; -29.103548;,
    -46.227551; -5.164615; -28.147049;;
    72;
    3;2, 1, 0;,
    3;2, 3, 1;,
    3;6, 5, 4;,
    3;6, 7, 5;,
    3;9, 4, 8;,
    3;9, 6, 4;,
    3;11, 8, 10;,
    3;11, 9, 8;,
    3;13, 10, 12;,
    3;13, 11, 10;,
    3;12, 14, 13;,
    3;12, 15, 14;,
    3;15, 16, 14;,
    3;15, 17, 16;,
    3;17, 18, 16;,
    3;17, 19, 18;,
    3;19, 20, 18;,
    3;19, 21, 20;,
    3;21, 22, 20;,
    3;21, 23, 22;,
    3;23, 24, 22;,
    3;23, 25, 24;,
    3;27, 25, 26;,
    3;27, 24, 25;,
    3;3, 26, 1;,
    3;3, 27, 26;,
    3;30, 29, 28;,
    3;30, 31, 29;,
    3;4, 30, 28;,
    3;4, 5, 30;,
    3;28, 33, 32;,
    3;28, 29, 33;,
    3;8, 28, 32;,
    3;8, 4, 28;,
    3;32, 35, 34;,
    3;32, 33, 35;,
    3;10, 32, 34;,
    3;10, 8, 32;,
    3;34, 37, 36;,
    3;34, 35, 37;,
    3;12, 34, 36;,
    3;12, 10, 34;,
    3;36, 15, 12;,
    3;36, 38, 15;,
    3;37, 38, 36;,
    3;37, 39, 38;,
    3;38, 17, 15;,
    3;38, 40, 17;,
    3;39, 40, 38;,
    3;39, 41, 40;,
    3;40, 19, 17;,
    3;40, 42, 19;,
    3;41, 42, 40;,
    3;41, 43, 42;,
    3;42, 21, 19;,
    3;42, 44, 21;,
    3;43, 44, 42;,
    3;43, 45, 44;,
    3;44, 23, 21;,
    3;44, 46, 23;,
    3;45, 46, 44;,
    3;45, 47, 46;,
    3;46, 25, 23;,
    3;46, 48, 25;,
    3;47, 48, 46;,
    3;47, 49, 48;,
    3;51, 49, 50;,
    3;51, 48, 49;,
    3;26, 48, 51;,
    3;26, 25, 48;,
    3;26, 50, 1;,
    3;26, 51, 50;;

   MeshNormals {
    52;
    -0.001823; 0.999741; -0.022673;,
    -0.334274; 0.934015; -0.126006;,
    -0.001145; 0.999745; -0.022575;,
    -0.358294; 0.932135; 0.052442;,
    0.121627; 0.989892; 0.072948;,
    0.220658; 0.965883; 0.135577;,
    0.098126; 0.979842; 0.174013;,
    0.000000; 0.999743; -0.022673;,
    -0.022010; 0.999675; -0.012872;,
    -0.056810; 0.978312; 0.199194;,
    0.107291; 0.988744; 0.104279;,
    -0.045623; 0.981675; 0.185021;,
    0.125527; 0.967770; 0.218323;,
    0.014668; 0.973009; 0.230302;,
    0.019351; 0.967250; 0.253088;,
    -0.054140; 0.976452; 0.208830;,
    -0.105900; 0.977087; 0.184624;,
    -0.107837; 0.980363; 0.165108;,
    -0.087214; 0.974488; 0.206804;,
    -0.014311; 0.984949; 0.172254;,
    -0.167760; 0.952537; 0.254028;,
    -0.056516; 0.989370; 0.133990;,
    -0.078606; 0.951899; 0.296157;,
    -0.009646; 0.997759; 0.066206;,
    -0.159106; 0.939962; 0.301921;,
    -0.242910; 0.967547; -0.069619;,
    -0.495151; 0.861375; -0.113394;,
    -0.366653; 0.903598; 0.221531;,
    0.083665; 0.981951; -0.169625;,
    0.315578; 0.920825; -0.229109;,
    0.401619; 0.913398; -0.066384;,
    0.043370; -0.999038; 0.006487;,
    0.162370; 0.979271; -0.121094;,
    0.041009; 0.987213; -0.154042;,
    0.352361; 0.935516; -0.025538;,
    0.216055; 0.960698; -0.174296;,
    0.267785; 0.963031; 0.029384;,
    0.304990; 0.910947; -0.277772;,
    -0.005021; 0.995894; -0.090389;,
    0.084736; 0.939652; -0.331471;,
    0.030778; 0.994137; -0.103654;,
    0.083917; 0.944544; -0.317482;,
    0.009488; 0.985530; -0.169235;,
    -0.024343; 0.915812; -0.400869;,
    0.008311; 0.964091; -0.265440;,
    0.062184; 0.917493; -0.392862;,
    -0.052048; 0.937010; -0.345404;,
    -0.095510; 0.936841; -0.336462;,
    -0.202975; 0.905766; -0.372007;,
    -0.311289; 0.897989; -0.310990;,
    -0.801124; 0.512304; -0.309426;,
    -0.442052; 0.836148; -0.324725;;
    72;
    3;2, 1, 0;,
    3;2, 3, 1;,
    3;6, 5, 4;,
    3;6, 7, 5;,
    3;9, 4, 8;,
    3;9, 6, 4;,
    3;11, 8, 10;,
    3;11, 9, 8;,
    3;13, 10, 12;,
    3;13, 11, 10;,
    3;12, 14, 13;,
    3;12, 15, 14;,
    3;15, 16, 14;,
    3;15, 17, 16;,
    3;17, 18, 16;,
    3;17, 19, 18;,
    3;19, 20, 18;,
    3;19, 21, 20;,
    3;21, 22, 20;,
    3;21, 23, 22;,
    3;23, 24, 22;,
    3;23, 25, 24;,
    3;27, 25, 26;,
    3;27, 24, 25;,
    3;3, 26, 1;,
    3;3, 27, 26;,
    3;30, 29, 28;,
    3;30, 31, 29;,
    3;4, 30, 28;,
    3;4, 5, 30;,
    3;28, 33, 32;,
    3;28, 29, 33;,
    3;8, 28, 32;,
    3;8, 4, 28;,
    3;32, 35, 34;,
    3;32, 33, 35;,
    3;10, 32, 34;,
    3;10, 8, 32;,
    3;34, 37, 36;,
    3;34, 35, 37;,
    3;12, 34, 36;,
    3;12, 10, 34;,
    3;36, 15, 12;,
    3;36, 38, 15;,
    3;37, 38, 36;,
    3;37, 39, 38;,
    3;38, 17, 15;,
    3;38, 40, 17;,
    3;39, 40, 38;,
    3;39, 41, 40;,
    3;40, 19, 17;,
    3;40, 42, 19;,
    3;41, 42, 40;,
    3;41, 43, 42;,
    3;42, 21, 19;,
    3;42, 44, 21;,
    3;43, 44, 42;,
    3;43, 45, 44;,
    3;44, 23, 21;,
    3;44, 46, 23;,
    3;45, 46, 44;,
    3;45, 47, 46;,
    3;46, 25, 23;,
    3;46, 48, 25;,
    3;47, 48, 46;,
    3;47, 49, 48;,
    3;51, 49, 50;,
    3;51, 48, 49;,
    3;26, 48, 51;,
    3;26, 25, 48;,
    3;26, 50, 1;,
    3;26, 51, 50;;
   }

   MeshTextureCoords {
    52;
    0.477424; 0.959095;,
    0.542491; 0.954601;,
    0.368191; 0.929294;,
    0.318703; 0.893542;,
    0.445612; 0.177969;,
    0.446769; 0.062688;,
    0.229321; 0.164840;,
    0.290824; 0.092868;,
    0.444995; 0.233891;,
    0.211645; 0.213447;,
    0.444660; 0.295775;,
    0.198918; 0.266923;,
    0.442590; 0.352401;,
    0.200729; 0.323636;,
    0.176035; 0.375831;,
    0.441754; 0.411065;,
    0.137484; 0.433528;,
    0.445899; 0.495413;,
    0.171493; 0.521803;,
    0.462027; 0.588253;,
    0.225314; 0.605164;,
    0.473978; 0.680822;,
    0.236200; 0.677042;,
    0.483571; 0.762128;,
    0.230618; 0.740120;,
    0.489291; 0.842544;,
    0.511602; 0.903985;,
    0.267137; 0.827793;,
    0.564294; 0.189083;,
    0.763739; 0.162522;,
    0.590269; 0.054078;,
    0.678134; 0.117936;,
    0.564054; 0.247102;,
    0.780657; 0.234107;,
    0.569069; 0.307314;,
    0.781739; 0.301324;,
    0.570787; 0.362045;,
    0.802789; 0.371649;,
    0.572220; 0.427123;,
    0.846443; 0.443610;,
    0.567195; 0.528606;,
    0.847783; 0.611542;,
    0.585048; 0.627861;,
    0.791852; 0.693904;,
    0.597002; 0.718543;,
    0.765412; 0.764930;,
    0.606582; 0.799833;,
    0.764651; 0.847987;,
    0.599837; 0.875762;,
    0.699420; 0.908431;,
    0.630235; 0.926850;,
    0.621184; 0.925105;;
   }

   MeshVertexColors {
    52;
    0; 1.000000; 1.000000; 1.000000; 1.000000;,
    1; 1.000000; 1.000000; 1.000000; 1.000000;,
    2; 1.000000; 1.000000; 1.000000; 1.000000;,
    3; 1.000000; 1.000000; 1.000000; 1.000000;,
    4; 1.000000; 1.000000; 1.000000; 1.000000;,
    5; 1.000000; 1.000000; 1.000000; 1.000000;,
    6; 1.000000; 1.000000; 1.000000; 1.000000;,
    7; 1.000000; 1.000000; 1.000000; 1.000000;,
    8; 1.000000; 1.000000; 1.000000; 1.000000;,
    9; 1.000000; 1.000000; 1.000000; 1.000000;,
    10; 1.000000; 1.000000; 1.000000; 1.000000;,
    11; 1.000000; 1.000000; 1.000000; 1.000000;,
    12; 1.000000; 1.000000; 1.000000; 1.000000;,
    13; 1.000000; 1.000000; 1.000000; 1.000000;,
    14; 1.000000; 1.000000; 1.000000; 1.000000;,
    15; 1.000000; 1.000000; 1.000000; 1.000000;,
    16; 1.000000; 1.000000; 1.000000; 1.000000;,
    17; 1.000000; 1.000000; 1.000000; 1.000000;,
    18; 1.000000; 1.000000; 1.000000; 1.000000;,
    19; 1.000000; 1.000000; 1.000000; 1.000000;,
    20; 1.000000; 1.000000; 1.000000; 1.000000;,
    21; 1.000000; 1.000000; 1.000000; 1.000000;,
    22; 1.000000; 1.000000; 1.000000; 1.000000;,
    23; 1.000000; 1.000000; 1.000000; 1.000000;,
    24; 1.000000; 1.000000; 1.000000; 1.000000;,
    25; 1.000000; 1.000000; 1.000000; 1.000000;,
    26; 1.000000; 1.000000; 1.000000; 1.000000;,
    27; 1.000000; 1.000000; 1.000000; 1.000000;,
    28; 1.000000; 1.000000; 1.000000; 1.000000;,
    29; 1.000000; 1.000000; 1.000000; 1.000000;,
    30; 1.000000; 1.000000; 1.000000; 1.000000;,
    31; 1.000000; 1.000000; 1.000000; 1.000000;,
    32; 1.000000; 1.000000; 1.000000; 1.000000;,
    33; 1.000000; 1.000000; 1.000000; 1.000000;,
    34; 1.000000; 1.000000; 1.000000; 1.000000;,
    35; 1.000000; 1.000000; 1.000000; 1.000000;,
    36; 1.000000; 1.000000; 1.000000; 1.000000;,
    37; 1.000000; 1.000000; 1.000000; 1.000000;,
    38; 1.000000; 1.000000; 1.000000; 1.000000;,
    39; 1.000000; 1.000000; 1.000000; 1.000000;,
    40; 1.000000; 1.000000; 1.000000; 1.000000;,
    41; 1.000000; 1.000000; 1.000000; 1.000000;,
    42; 1.000000; 1.000000; 1.000000; 1.000000;,
    43; 1.000000; 1.000000; 1.000000; 1.000000;,
    44; 1.000000; 1.000000; 1.000000; 1.000000;,
    45; 1.000000; 1.000000; 1.000000; 1.000000;,
    46; 1.000000; 1.000000; 1.000000; 1.000000;,
    47; 1.000000; 1.000000; 1.000000; 1.000000;,
    48; 1.000000; 1.000000; 1.000000; 1.000000;,
    49; 1.000000; 1.000000; 1.000000; 1.000000;,
    50; 1.000000; 1.000000; 1.000000; 1.000000;,
    51; 1.000000; 1.000000; 1.000000; 1.000000;;
   }

   MeshMaterialList {
    1;
    72;
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0;

    Material def_surf_mat {
     0.992157; 0.992157; 0.992157; 1.000000;;
     128.000000;
     0.150000; 0.150000; 0.150000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "rubbish2.dds";
     }
    }

   }
  }
}