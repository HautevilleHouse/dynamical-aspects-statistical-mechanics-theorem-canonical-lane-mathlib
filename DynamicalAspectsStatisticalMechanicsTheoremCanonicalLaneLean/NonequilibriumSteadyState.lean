import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.FluctuationDissipation

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure NonequilibriumSteadyStatePackage {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} {E : ErgodicDecompositionPackage L} (FDP : FluctuationDissipationPackage E) where
  steadyStateMeasure : Prop
  entropyProduction : Prop
  localDetailedBalance : Prop
  thermodynamicConsistency : Prop

structure NonequilibriumSteadyStateEvidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} {E : ErgodicDecompositionPackage L} {FDP : FluctuationDissipationPackage E} (NESS : NonequilibriumSteadyStatePackage FDP) where
  steadyStateMeasureClosed : NESS.steadyStateMeasure
  entropyProductionClosed : NESS.entropyProduction
  localDetailedBalanceClosed : NESS.localDetailedBalance
  thermodynamicConsistencyClosed : NESS.thermodynamicConsistency

def NonequilibriumSteadyStateClosed {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} {E : ErgodicDecompositionPackage L} {FDP : FluctuationDissipationPackage E} (NESS : NonequilibriumSteadyStatePackage FDP) : Prop :=
  NESS.steadyStateMeasure ∧ NESS.entropyProduction ∧ NESS.localDetailedBalance ∧ NESS.thermodynamicConsistency

theorem nonequilibrium_steady_state_closed_from_evidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} {E : ErgodicDecompositionPackage L} {FDP : FluctuationDissipationPackage E} (NESS : NonequilibriumSteadyStatePackage FDP) (Ev : NonequilibriumSteadyStateEvidence NESS) :
    NonequilibriumSteadyStateClosed NESS := by
  exact And.intro Ev.steadyStateMeasureClosed (And.intro Ev.entropyProductionClosed (And.intro Ev.localDetailedBalanceClosed Ev.thermodynamicConsistencyClosed))

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse