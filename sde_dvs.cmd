(sdegeo:create-rectangle (position 0.000 0.000 0.0 )  (position 0.030 0.030 0.0 ) "Germanium" "region_1" ) ;source 
(sdegeo:create-rectangle (position 0.030 0.000 0.0 )  (position 0.080 0.030 0.0 ) "Silicon" "region_2" ) ;pocket R1
(sdegeo:create-rectangle (position 0.000 0.000 0.0 )  (position 0.074 -0.003 0.0 ) "Silicon" "region_3" ) ;channel1 R2 R3
(sdegeo:create-rectangle (position 0.074 0.000 0.0 )  (position 0.080 -0.003 0.0 ) "Silicon" "region_4" ) ;channel1 R2 R3
(sdegeo:create-rectangle (position 0.080 0.000 0.0 )  (position 0.090 -0.003 0.0 ) "Silicon" "region_5" ) ;drain


(sdegeo:create-rectangle (position 0.000 -0.003 0.0 )  (position 0.080 -0.004 0.0 ) "HfO2" "region_6" ) ;oxide layer upper1

(sdegeo:create-rectangle (position 0.000 -0.004 0.0 )  (position 0.080 -0.005 0.0 ) "Metal" "region_7" ) ;gate upper1


(sdegeo:define-contact-set "gate" 5  (color:rgb 1 0 0 ) "##" )
(sdegeo:set-current-contact-set "gate")
(sdegeo:define-contact-set "source" 5  (color:rgb 1 1 0 ) "||" )
(sdegeo:set-current-contact-set "source")
(sdegeo:define-contact-set "drain" 5  (color:rgb 1 0 1 ) "//" )
(sdegeo:set-current-contact-set "drain")

(sdegeo:define-2d-contact (list (car (find-edge-id (position 0.040 -0.005 0)))) "gate") ;gate upper


(sdegeo:define-2d-contact (list (car (find-edge-id (position 0.090 -0.0015 0)))) "drain")
(sdegeo:define-2d-contact (list (car (find-edge-id (position 0.000 0.015 0)))) "source")


(sdedr:define-refeval-window "RefEvalWin_1" "Rectangle"  (position 0.000 0.000 0) (position 0.030 0.030 0)) ;source NA

(sdedr:define-refeval-window "RefEvalWin_2" "Rectangle"  (position 0.000 0.000 0) (position 0.074 -0.003 0)) ;channel1 I
(sdedr:define-refeval-window "RefEvalWin_3" "Rectangle"  (position 0.074 0.000 0) (position 0.080 -0.003 0)) ;LDP

(sdedr:define-refeval-window "RefEvalWin_4" "Rectangle"  (position 0.080 0.000 0) (position 0.090 -0.003 0)) ;drain ND






(sdedr:define-constant-profile "ConstantProfileDefinition_1" "BoronActiveConcentration" 1e+17)

(sdedr:define-constant-profile-placement "ConstantProfilePlacement_1" "ConstantProfileDefinition_1" "RefEvalWin_1")


(sdedr:define-constant-profile "ConstantProfileDefinition_2" "BoronActiveConcentration" 1e+15)

(sdedr:define-constant-profile-placement "ConstantProfilePlacement_2" "ConstantProfileDefinition_2" "RefEvalWin_2")

(sdedr:define-constant-profile "ConstantProfileDefinition_3" "BoronActiveConcentration" 1e+18)

(sdedr:define-constant-profile-placement "ConstantProfilePlacement_3" "ConstantProfileDefinition_3" "RefEvalWin_3")

(sdedr:define-constant-profile "ConstantProfileDefinition_4" "ArsenicActiveConcentration" 1e+20)

(sdedr:define-constant-profile-placement "ConstantProfilePlacement_4" "ConstantProfileDefinition_4" "RefEvalWin_4")


(sdedr:define-refinement-size "RefinementDefinition_1" .008 .008 .005 .005 )

(sdedr:define-refinement-placement "RefinementPlacement_1" "RefinementDefinition_1" "RefEvalWin_1" )

(sdedr:define-refinement-size "RefinementDefinition_2" .008 .008  0.005 0.005 )

(sdedr:define-refinement-placement "RefinementPlacement_2" "RefinementDefinition_2" "RefEvalWin_2" )

(sdedr:define-refinement-size "RefinementDefinition_3" .008 .008  0.005 0.005 )

(sdedr:define-refinement-placement "RefinementPlacement_3" "RefinementDefinition_3" "RefEvalWin_3" )

(sdedr:define-refinement-size "RefinementDefinition_4" .008 .008  0.005 0.005 )

(sdedr:define-refinement-placement "RefinementPlacement_4" "RefinementDefinition_4" "RefEvalWin_4" )





(sde:set-meshing-command "snmesh -a -c boxmethod")

(sdedr:append-cmd-file "REFERENCE")


 (sde:build-mesh "snmesh" "-a -c boxmethod" "REFERENCE")
