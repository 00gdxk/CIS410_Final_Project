xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.19
// Website: http://www.unwrap3d.com
// Time: Mon Nov 23 12:29:53 2009

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
    -34.031700; 0.353308; -8.110802;,
    -32.341801; 0.264768; -11.411503;,
    -34.031700; 0.528008; -1.816502;,
    -32.341198; 0.619608; 1.483898;,
    24.651800; 4.633538; 9.302197;,
    33.433701; 0.899468; 11.567097;,
    21.166401; 1.156838; 20.840099;,
    27.908800; 1.108158; 19.086197;,
    20.390600; 4.249738; 8.206398;,
    17.107401; 1.155198; 20.780998;,
    15.682200; 4.338868; 6.975697;,
    12.780971; 1.143678; 20.365700;,
    11.337391; 5.208478; 5.941498;,
    8.509931; 1.109308; 19.127399;,
    4.869278; 1.037348; 16.534698;,
    6.945601; 4.857618; 4.654499;,
    0.828161; 0.949428; 13.367199;,
    0.549770; 4.257648; 2.854099;,
    -5.224799; 0.953968; 13.530800;,
    -6.142900; 4.526148; -0.025803;,
    -12.368500; 0.916138; 12.167797;,
    -12.889599; 3.970098; -2.517700;,
    -17.603500; 0.860158; 10.150597;,
    -18.793999; 3.473328; -4.551401;,
    -22.511299; 0.832918; 9.169296;,
    -24.699200; 4.383948; -6.307901;,
    -29.136700; 3.933108; -8.780602;,
    -28.415001; 0.731008; 5.497700;,
    26.267200; 2.829418; 2.892300;,
    28.423601; 0.421218; -5.663801;,
    33.740303; 0.712018; 4.813499;,
    34.031700; 0.533848; -1.606003;,
    21.854500; 2.599168; 1.734596;,
    23.797401; 0.388108; -6.856901;,
    17.384001; 4.605118; 0.258797;,
    18.833000; 0.351008; -8.193502;,
    13.261621; 6.846588; -0.934601;,
    14.774590; 0.310738; -9.644402;,
    8.347370; 7.577818; -2.321903;,
    10.212360; 0.207304; -13.371101;,
    0.533381; 5.672578; -4.106901;,
    0.048020; 0.012105; -20.403902;,
    -6.636999; 6.564248; -7.039303;,
    -7.368299; 0.046908; -19.150002;,
    -13.278500; 5.250598; -9.491402;,
    -13.312199; 0.045395; -19.204502;,
    -19.139000; 2.053278; -11.210901;,
    -19.637800; 0.000000; -20.840103;,
    -25.163799; 2.107928; -12.810202;,
    -25.581799; 0.060527; -18.659302;,
    -28.415001; 0.150298; -15.425001;,
    -28.470001; 0.438918; -14.918001;;
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
    -0.001817; 0.999613; -0.027745;,
    -0.331260; 0.931544; -0.149977;,
    -0.001140; 0.999618; -0.027625;,
    -0.358347; 0.931416; 0.063657;,
    0.145762; 0.987098; 0.066271;,
    0.233804; 0.966060; 0.109836;,
    0.096462; 0.972951; 0.209910;,
    0.000000; 0.999615; -0.027744;,
    -0.022060; 0.999637; -0.015451;,
    -0.056404; 0.968808; 0.241307;,
    0.107317; 0.986082; 0.126983;,
    -0.045248; 0.973416; 0.224529;,
    0.031089; 0.968738; 0.246131;,
    -0.052444; 0.962985; 0.264405;,
    -0.193791; 0.944863; 0.263969;,
    -0.139799; 0.946917; 0.289488;,
    -0.130526; 0.948439; 0.288837;,
    -0.123274; 0.956554; 0.264213;,
    -0.039424; 0.961376; 0.272400;,
    -0.084736; 0.964914; 0.248516;,
    -0.100084; 0.969520; 0.223636;,
    -0.163187; 0.963972; 0.210068;,
    -0.092138; 0.977515; 0.189669;,
    -0.081172; 0.994527; 0.065775;,
    -0.040658; 0.976444; 0.211907;,
    0.017168; 0.999201; -0.036091;,
    -0.221971; 0.951706; -0.212098;,
    -0.214938; 0.949055; 0.230427;,
    0.116857; 0.965170; -0.234075;,
    0.125342; 0.979400; -0.158322;,
    0.257929; 0.960723; -0.102390;,
    -0.000001; 0.999615; -0.027744;,
    0.173040; 0.964676; -0.198639;,
    0.043283; 0.968147; -0.246611;,
    0.366965; 0.922429; -0.120256;,
    0.229782; 0.912774; -0.337704;,
    0.243735; 0.969453; -0.027460;,
    0.330809; 0.812518; -0.479978;,
    0.028263; 0.990873; -0.131803;,
    0.171688; 0.868937; -0.464190;,
    0.012081; 0.995161; -0.097507;,
    0.128069; 0.916830; -0.378180;,
    -0.047344; 0.994577; -0.092604;,
    -0.023435; 0.881243; -0.472083;,
    -0.204757; 0.956123; -0.209530;,
    -0.093021; 0.918192; -0.385059;,
    -0.058323; 0.960145; -0.273348;,
    0.001346; 0.968511; -0.248967;,
    -0.040294; 0.940044; -0.338665;,
    -0.302494; 0.878015; -0.370926;,
    -0.234336; 0.833688; -0.500052;,
    -0.149834; 0.879708; -0.451290;;
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
    0.045336; 0.546840;,
    0.066192; 0.587575;,
    0.045336; 0.469159;,
    0.066199; 0.428428;,
    0.769574; 0.331939;,
    0.877955; 0.303986;,
    0.726559; 0.189544;,
    0.809770; 0.211190;,
    0.716985; 0.345462;,
    0.676465; 0.190274;,
    0.658876; 0.360651;,
    0.623071; 0.195399;,
    0.605255; 0.373414;,
    0.570360; 0.210681;,
    0.525429; 0.242679;,
    0.551054; 0.389298;,
    0.475556; 0.281771;,
    0.472121; 0.411517;,
    0.400854; 0.279752;,
    0.389523; 0.447059;,
    0.312691; 0.296573;,
    0.306259; 0.477813;,
    0.248083; 0.321468;,
    0.233391; 0.502912;,
    0.187514; 0.333579;,
    0.160512; 0.524590;,
    0.105747; 0.555106;,
    0.114654; 0.378892;,
    0.789510; 0.411046;,
    0.816124; 0.516640;,
    0.881739; 0.387336;,
    0.885336; 0.466561;,
    0.735051; 0.425334;,
    0.759030; 0.531365;,
    0.679879; 0.443547;,
    0.697762; 0.547861;,
    0.629003; 0.458275;,
    0.647675; 0.565767;,
    0.568354; 0.475397;,
    0.591371; 0.611760;,
    0.471918; 0.497426;,
    0.465928; 0.698554;,
    0.383425; 0.533616;,
    0.374400; 0.683080;,
    0.301460; 0.563879;,
    0.301044; 0.683752;,
    0.229133; 0.585100;,
    0.222977; 0.703938;,
    0.154779; 0.604837;,
    0.149620; 0.677024;,
    0.114654; 0.637108;,
    0.113975; 0.630851;;
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

    Material rubbish1 {
     0.992157; 0.992157; 0.992157; 1.000000;;
     128.000000;
     0.150000; 0.150000; 0.150000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "rubbish1.dds";
     }
    }

   }
  }
}
