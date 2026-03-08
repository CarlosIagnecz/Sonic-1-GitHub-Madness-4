
; ---------------------------------------------------------------
SampleTable:
	;		type		pointer		Hz
	dcSample	TYPE_DPCM, 	Kick, 		8000			; $81
	dcSample	TYPE_PCM,	Snare,		24000			; $82
	dcSample	TYPE_DPCM, 	Timpani, 	7250			; $83
	dcSample	TYPE_DPCM, 	Timpani, 	9750			; $84
	dcSample	TYPE_DPCM, 	Timpani, 	8750			; $85
	dcSample	TYPE_DPCM, 	Timpani, 	7150			; $86
	dcSample	TYPE_DPCM, 	Timpani, 	7000			; $87
	dcSample	TYPE_PCM,	ChunkyKick,	16000			; $88
	dcSample	TYPE_PCM,	PokeSnare,	16864			; $89
	dcSample	TYPE_PCM,	PokeKickCrash,	15300			; $8A
	dcSample	TYPE_PCM,	PokeTimpani,	15000			; $8B
	dcSample	TYPE_PCM,	PokeTimpani,	11297			; $8C
	dcSample	TYPE_PCM,	PokeTimpani,	7500			; $8D
	dcSample	TYPE_PCM,	DAMN,		16000			; $8E
	dcSample	TYPE_PCM,	Trevor,		0, FLAGS_SFX		; $8F
	dcSample	TYPE_PCM,	SegaPCM,	0, FLAGS_SFX		; $90	NOTE: sample rate is auto-detected from WAV file
	dc.w	-1	; end marker

; ---------------------------------------------------------------
	incdac	Kick, "sound/dac/S1/kick.dpcm"
	incdac	Snare, "sound/dac/S1/snare.pcm"
	incdac	Timpani, "sound/dac/S1/timpani.dpcm"
	incdac	ChunkyKick, "sound/dac/DAX/ChunkyKick.pcm"
	incdac	PokeSnare, "sound/dac/DAX/PokeSnare.pcm"
	incdac	PokeKickCrash, "sound/dac/DAX/PokeKickCrash.pcm"
	incdac	PokeTimpani, "sound/dac/DAX/PokeTimpani.pcm"
	incdac	DAMN, "sound/dac/DAX/DAMN.pcm"
	incdac	Trevor, "sound/dac/Trevor.wav"
	incdac	SegaPCM, "sound/dac/sega.wav"

	even
