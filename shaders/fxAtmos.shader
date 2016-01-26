attribute vec3 in_Position;
uniform vec3 uSunPos;               // sun position on sky dome.
uniform float uSunHorFactor;        // horizontal sun factor.
uniform float uSunVertFactor;       // vertical sun factor.
varying vec3 vPosition;             // output current vertex position of dome.
varying vec3 vSunPos;               // output sun position on sky dome.
varying float vSunHorIntensity;     // output horizontal sun intensity factor.
varying float vSunHorIntensityP;    // output horizontal sun powered intensity factor.
varying float vSunVertIntensity;    // output vertical sun intensity factor.
varying float vSunVertIntensityNP;  // output vertical sun powered inversed instensity factor.

void main()
{
    // write vertex position of dome to fragment shader.
    vPosition = in_Position;
    // write sun position to fragment shader.
    vSunPos = uSunPos;
    
    // calculate sun horizontal normal intensity and powered intensity values to fragment shader.
    vSunHorIntensity = dot(normalize(vec3(uSunPos.xy, 0.0)), normalize(uSunPos));
    vSunHorIntensity = clamp(vSunHorIntensity, 0.0, 1.0);
    vSunHorIntensityP = pow(vSunHorIntensity, uSunHorFactor);
    
    // calculate sun vertical normal intensity and powered inversed intensity values to fragment shader.
    vSunVertIntensity = dot(vec3(0.0, 0.0, 1.0), normalize(uSunPos));
    vSunVertIntensity = abs(clamp(vSunVertIntensity, -1.0, 0.0));
    vSunVertIntensityNP = pow(1.0 - vSunVertIntensity, uSunVertFactor);
    
    // calculate final vertex position in screen space and write to output.
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform vec3 uSkyColor;
uniform vec3 uSkyColorRed;
uniform vec3 uSunColorYellow;
uniform vec3 uSunColorAura;
uniform float uSunPosFactor;
uniform float uPosHorFactor;
varying vec3 vPosition;
varying vec3 vSunPos;
varying float vSunHorIntensity;
varying float vSunHorIntensityP;
varying float vSunVertIntensity;
varying float vSunVertIntensityNP;

void main()
{
    // calculate sun main intensity (between current mapped point on sky dome and sun position).
    float sunInt = dot(normalize(vPosition), normalize(vSunPos));
    sunInt = clamp(sunInt, 0.0, 1.0);
    float sunIntP = pow(sunInt, uSunPosFactor);
    
    // calculate sun horizontal intensity (depends on how high on sky dome the sun is positioned).
    float horPosInt = dot(normalize(vec3(vPosition.xy, 0.0)), normalize(vPosition));
    horPosInt = clamp(horPosInt, 0.0, 1.0);
    float horPosIntP = pow(horPosInt, uPosHorFactor);
    
    // set default sky color.
    vec4 sky = vec4(uSkyColor, vSunVertIntensityNP);
    
    // calculate sky redness (depends on how low on sky dome the sun is positioned).
    float f = horPosInt * vSunHorIntensityP * sunInt;
    sky += vec4(uSkyColorRed - uSkyColor, 1.0) * vec4(clamp(f, 0.0, 1.0));
    
    // calculate horizontal sky color (depends on how low on sky dome the sun is positioned).
    sky += vec4(uSunColorAura, 1.0) * vec4(horPosIntP * 0.5 * (1.0 - vSunVertIntensity));
    
    // calculate sun color (depends on sun position on sky dome) and add to sky color.
    sky += vec4(mix(vec3(sunIntP), uSunColorYellow * vec3(sunIntP), vec3(vSunHorIntensity)), sunIntP);
    
    // write final sky color to output.
    gl_FragColor = sky;
}

