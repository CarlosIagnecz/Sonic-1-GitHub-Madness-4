BGM_1UP_Header:
	smpsHeaderStartSong	1
	smpsHeaderVoice		BGM_1UP_Voices
	smpsHeaderChan		$06, $03
	smpsHeaderTempo		$02, $07

	smpsHeaderDAC	BGM_1UP_DAC
	smpsHeaderFM	BGM_1UP_FM1,	$00, $08
	smpsHeaderFM	BGM_1UP_FM2,	$00, $0A
	smpsHeaderFM	BGM_1UP_FM3,	$00, $18
	smpsHeaderFM	BGM_1UP_FM4,	$00, $18
	smpsHeaderFM	BGM_1UP_FM5,	$00, $18
	smpsHeaderPSG	BGM_1UP_PSG1,	$F4, $00, $00, uptone_01
	smpsHeaderPSG	BGM_1UP_PSG2,	$F4, $06, $00, uptone_01
	smpsHeaderPSG	BGM_1UP_PSG3,	$F4, $00, $00, uptone_03

	; Loop Pattern :  FFFFFFFF
	; End Pattern :  01
	; End Place :  42

BGM_1UP_FM5:
	smpsAlterNote		$FA
	smpsPan		panLeft, $00
	dc.b	nRst, $04

BGM_1UP_FM1:
	smpsSetvoice		$00
	dc.b	nC4, $03, nD4
	dc.b	nE4, $0C, nG4, nF4, $06, nE4, nD4, $03, nRst, nF4, $06, nE4, $12, nC4, $06

BGM_1UP_FM1_Loop01:
	dc.b	nC4, $06, nRst, $02
	smpsAlterVol	$10
	smpsLoop	$00, $03, BGM_1UP_FM1_Loop01
	smpsStop

BGM_1UP_FM2:
	smpsSetvoice	$03
	dc.b	nRst, $06, nC3, $03, nRst, nC3, nRst, $09, nC3, $03, $09, $03, nRst, $09, nG3, $03
	dc.b	nRst, nC3, $18, $06
	smpsStop

BGM_1UP_FM3:
	smpsSetvoice	$02
	smpsPan		panLeft, $00
	dc.b	nRst, $06, nE4, $03, nRst, nC4, nRst, nG4, $06, nF4, $0C, nG4, $03, nRst
	dc.b	nB4, $06, nC5, $1E, $06
	smpsStop

BGM_1UP_FM4:
	smpsSetvoice	$02
	smpsPan		panRight, $00
	dc.b	nRst, $06, nC4, $03, nRst, nG3, nRst, nE4, $06, nD4, $0C, nE4, $03, nRst
	dc.b	nF4, $06, nG4, $1E, $06
	smpsStop

BGM_1UP_PSG2:
	smpsAlterNote		$02
	dc.b	nRst, $02

BGM_1UP_PSG1:
	dc.b	nRst, $36
	dc.b	nC2, $02, nE2, nG2, nC3, nE3, nG3, nC4, nE3, nG3, nC4, $04
	smpsStop

BGM_1UP_PSG3:
	smpsPSGform		$E7
	dc.b	nRst, $06
	smpsNoteFill		$05
	dc.b	nG6, $06, $02, $02, $02, $06, $06, $06, $0C, $06
	smpsPSGvoice		uptone_02
	smpsNoteFill		$00
	smpsPSGAlterVol		$02
	dc.b	$06
	smpsPSGvoice		uptone_03
	smpsNoteFill		$05
	smpsPSGAlterVol		$FE
	dc.b	$02, $02, $02, $06, $02, $02, $02, $03
	smpsStop

BGM_1UP_DAC:
	dc.b	dChunkyKick, $03, $03, dPokeKickCrashHi, $12, dChunkyKick, $06
	dc.b	dPokeSnare, dChunkyKick, $0C, $06, dPokeHiTimpani, dPokeMidTimpani
	dc.b	dPokeHiTimpani, dPokeMidTimpani, dPokeHiTimpani, $0C, nRst, $12
	smpsFade
	smpsStop

BGM_1UP_Voices:
;	FM Voice 00 -> 00: Lead
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
	smpsVcDetune		$07, $03, $03, $07
	smpsVcCoarseFreq	$02, $06, $08, $0C
	smpsVcRateScale		$00, $01, $01, $03
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0F, $12, $11, $0F
	smpsVcDecayRate2	$05, $0A, $0D, $01
	smpsVcDecayLevel	$03, $01, $03, $01
	smpsVcReleaseRate	$0C, $03, $0C, $03
	smpsVcTotalLevel	$03, $1C, $00, $1C

;	FM Voice 01 -> 01: Orch Snare
	smpsVcAlgorithm		$04
	smpsVcFeedback		$07
	smpsVcDetune		$00, $00, $00, $07
	smpsVcCoarseFreq	$01, $03, $01, $01
	smpsVcRateScale		$01, $03, $00, $00
	smpsVcAttackRate	$1F, $1F, $1F, $1F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$12, $10, $11, $0C
	smpsVcDecayRate2	$14, $17, $12, $19
	smpsVcDecayLevel	$09, $05, $0F, $0A
	smpsVcReleaseRate	$05, $06, $08, $06
	smpsVcTotalLevel	$00, $0F, $00, $02

;	FM Voice 02 -> 02: Trumpet
	smpsVcAlgorithm		$05
	smpsVcFeedback		$07
	smpsVcDetune		$06, $07, $01, $00
	smpsVcCoarseFreq	$01, $02, $00, $01
	smpsVcRateScale		$00, $01, $00, $00
	smpsVcAttackRate	$14, $13, $14, $0F
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$03, $06, $06, $04
	smpsVcDecayRate2	$00, $00, $0F, $00
	smpsVcDecayLevel	$01, $05, $03, $01
	smpsVcReleaseRate	$0F, $0F, $0F, $0F
	smpsVcTotalLevel	$00, $00, $00, $1A

;	FM Voice 03 -> 03: Bass
	smpsVcAlgorithm		$04
	smpsVcFeedback		$05
	smpsVcDetune		$00, $07, $07, $00
	smpsVcCoarseFreq	$00, $00, $01, $01
	smpsVcRateScale		$03, $03, $03, $03
	smpsVcAttackRate	$1C, $1C, $1F, $1E
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$05, $04, $07, $06
	smpsVcDecayRate2	$08, $01, $08, $08
	smpsVcDecayLevel	$0B, $05, $0B, $0B
	smpsVcReleaseRate	$04, $04, $04, $04
	smpsVcTotalLevel	$00, $16, $07, $17

;	PSG Voice 04 -> kTone_0B
;	macros:
;		vol: 15 15 15 15 14 14 14 14 13 13 13 13 12 12 12 12 11 11 11 11 10 10 10 10 9 9 9 9 8 8 8 8 7 7 7 7 6 6 6 6 5 5 5 5 0

;	PSG Voice 05 -> kTone_04
;	macros:
;		vol: 15 15 13 12 11 11 10 10 10 9 9 0

;	PSG Voice 06 -> kTone_0E
;	macros:
;		vol: 15 14 13 11 9 7 5 3 1 0

