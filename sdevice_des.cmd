File {
  * Input Files
  Grid="REFERENCE_msh.tdr"
  Parameter="sdevice.par"
 
  * Output Files
  Current = "REFERENCE"
  Plot    = "REFERENCE"
  Output  = "REFERENCE"
}

Electrode{
{Name="source" voltage=0}
{Name="drain" voltage= 0.5}
{Name="gate" voltage=0}

} 


Physics
{
 Fermi
      EffectiveIntrinsicDensity(BandGapNarrowing (OldSlotboom))
     
    Mobility (
    DopingDependence
  HighFieldSaturation
      Enormal
 
 )

Recombination(
	SRH
Band2Band


)

 
 } 




Plot{
   eDensity hDensity
   TotalCurrent/Vector eCurrent/Vector hCurrent/Vector
   eMobility hMobility
   eVelocity hVelocity
  Potential SpaceCharge
   Electrostaticpotential
   ElectricField/Vector
  Doping DonorConcentration AcceptorConcentration
   SRH
   Band2Band
   * Auger
   AvalancheGeneration eAvalancheGeneration hAvalancheGeneration
     BandGap
     EffectiveBandGap
   BandGapNarrowing
   Affinity
   ConductionBand ValenceBand
 
}






Math {
   RelErrControl
   Digits=3
   ErRef(electron)=1.e10
   ErRef(hole)=1.e10
   Notdamped=250
  Iterations=100
   DirectCurrent
   Method =ILS
   -CheckUndefinedModels
      }
 
         
      Solve {
  *-- Buildup of initial solution:
   *NewCurrentFile=""
  Coupled(Iterations=500){ Poisson }
  Coupled{ Poisson Electron Hole  }
 
  Quasistationary(
   
    MinStep=1e-25 MaxStep=0.005
    Goal{ Name="gate" Voltage=1.2}
        ){ Coupled{ Poisson Electron Hole }
    
     }
    }
