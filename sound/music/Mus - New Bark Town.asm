BGM_Dummy_Header:
	smpsHeaderStartSong	3
	smpsHeaderVoice		BGM_Dummy_Voices
	smpsHeaderChan		$04, $00
	smpsHeaderTempo		$02, $0A

	smpsHeaderDAC		BGM_Dummy_DAC
	smpsHeaderFM		BGM_Dummy_FM1,	$00, $0B
	smpsHeaderFM		BGM_Dummy_FM2,	$00, $0D
	smpsHeaderFM		BGM_Dummy_FM3,	$00, $09

; FM1 Data
BGM_Dummy_FM1:
	smpsSetvoice	$00
	dc.b	nC5, $04, nD5

BGM_Dummy_Jump00:
	smpsSetvoice	$00
	dc.b	nE5, $10, nG5, nF5, $08, nE5, nD5, nF5, nE5, $18, nC5, $08
	dc.b	nG4, $18, nF4, $04, nG4, nA4, $10, nC5, nD5, $08, nC5, nB4
	dc.b	nC5, nD5, $18, nE5, $08, nD5, $10, nRst, $08, nC5, $04, nD5
	dc.b	nE5, $10, nG5, nAb5, $08, nG5, nF5, nAb5, nG5, $18, nB5, $08
	dc.b	nC6, $18, nD5, $04, nE5, $04, nF5, $18, nG5, $08, nA5, $20
	dc.b	nG5, $18, nF5, $04, nE5, nD5, $10, nRst, nA5, $18, nG5, $18
	dc.b	nF5, $10, nD5, $40, nA6, $18, nG6, $18, nC7, $10, nB6, $40
	dc.b	nA5, $18, nG5, nF5, $10, nD5, $40, nA6, $18, nG6, nC7, $10
	dc.b	nD7, $38, nC5, $04, nD5
	smpsJump	BGM_Dummy_Jump00

; FM2 Data
BGM_Dummy_FM2:
	smpsSetvoice	$00
	dc.b	nRst, $08

BGM_Dummy_Jump01:
	smpsCall	BGM_Dummy_Call00
	dc.b	nAb3, $04, nRst
	smpsCall	BGM_Dummy_Call00
	dc.b	nBb3, $04, nRst, nF2, $08, nRst, $10, nF2, $02, nRst, nF2, nRst
	dc.b	nFs2, $04, nRst, nFs2, $10, nC3, $04, nRst, nG3, $08, nRst, $10
	dc.b	nG3, $02, nRst, nG3, nRst, nG2, $04, nRst, nG2, $10, nB2, $08
	smpsLoop	$00, $02, BGM_Dummy_Jump01
	dc.b	nF2, $40, nG2, nF2, nG2, nF2, nG2, nF2, nG2
	smpsJump	BGM_Dummy_Jump01

BGM_Dummy_Call00:
	dc.b	nC3, $08, nRst, $10, nC3, $02, nRst, nC3, nRst, nC3, $04, nRst
	dc.b	nC3, $10
	smpsReturn

; FM3 Data
BGM_Dummy_FM3:
	smpsSetvoice	$00
	dc.b	nRst, $08

BGM_Dummy_Jump02:
	smpsCall	BGM_Dummy_Call02
	dc.b	nA3, $04, nRst, nF3, nRst, nF4, $08, nA3, $04, nRst, nA3, nRst
	dc.b	nFs3, $04, nRst, nD4, $08, nA3, $04, nRst, nB3, nRst, nG3, nRst
	dc.b	nF4, $08, nE4, nD4, $04, nE4, nD4, nC4, nB3, nA3, nG3, nF3
	smpsCall	BGM_Dummy_Call02
	dc.b	nA3, $04, nRst, nF3, nRst, nC4, nRst, nA3, nRst, nA3, nRst, nFs3
	dc.b	nRst, $04, nC4, nRst, nA3, nRst, nB3, nRst, nG3, nRst, nD4, nRst
	dc.b	nB3, $04, nRst, nG3, nB3, nD4, nF4, nG4, nB4, nD5, nG5

BGM_Dummy_Loop00:
	smpsCall	BGM_Dummy_Call03
	dc.b	nD4, $08
	smpsLoop	$00, $03, BGM_Dummy_Loop00
	smpsCall	BGM_Dummy_Call03
	dc.b	nA4, $08
	smpsJump	BGM_Dummy_Jump02
 
BGM_Dummy_Call02:
	dc.b	nE4, $04, nRst, nC4, nRst, nG4, $08, nC4, $04, nRst, nE4, nRst
	dc.b	nC4, $04, nRst, nAb4, $08, nC4, $04, nRst, $04, nE4, $04, nRst
	dc.b	nC4, nRst, nA4, $08, nE4, $04, nRst, nE4, nRst, nC4, $04, nRst
	dc.b	nBb4, $08, nC4, $04, nRst
	smpsReturn

BGM_Dummy_Call03:
	dc.b	nF3, $08, nA3, nC4, nE4, $10, nF4, nC4, $08
	dc.b	nG3, $08, nB3, nD4, nF4, $10, nG4
	smpsReturn

; DAC Data
BGM_Dummy_DAC:
	smpsStop

BGM_Dummy_Voices:
;	Voice $00
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
	smpsVcUnusedBits	$00
	smpsVcDetune		$00, $03, $00, $07
	smpsVcCoarseFreq	$01, $03, $0C, $01
	smpsVcRateScale		$01, $01, $01, $01
	smpsVcAttackRate	$1F, $15, $18, $18
	smpsVcAmpMod		$00, $00, $00, $00
	smpsVcDecayRate1	$0F, $09, $04, $04
	smpsVcDecayRate2	$0B, $03, $01, $00
	smpsVcDecayLevel	$00, $01, $01, $01
	smpsVcReleaseRate	$06, $06, $06, $06
	smpsVcTotalLevel	$00, $25, $2F, $25

