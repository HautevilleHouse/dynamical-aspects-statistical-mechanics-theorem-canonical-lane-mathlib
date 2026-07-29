import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.ErgodicDecomposition

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure FluctuationDissipationPackage {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} (E : ErgodicDecompositionPackage L) where
  linearResponse : Prop
  correlationFunction : Type u
  fluctuationDissipationTheorem : Prop
  greenKuboFormula : Prop

structure FluctuationDissipationEvidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} {E : ErgodicDecompositionPackage L} (FDP : FluctuationDissipationPackage E) where
  linearResponseClosed : FDP.linearResponse
  fluctuationDissipationTheoremClosed : FDP.fluctuationDissipationTheorem
  greenKuboFormulaClosed : FDP.greenKuboFormula

def FluctuationDissipationClosed {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} {E : ErgodicDecompositionPackage L} (FDP : FluctuationDissipationPackage E) : Prop :=
  FDP.linearResponse ∧ FDP.fluctuationDissipationTheorem ∧ FDP.greenKuboFormula

theorem fluctuation_dissipation_closed_from_evidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} {E : ErgodicDecompositionPackage L} (FDP : FluctuationDissipationPackage E) (Ev : FluctuationDissipationEvidence FDP) :
    FluctuationDissipationClosed FDP := by
  exact And.intro Ev.linearResponseClosed (And.intro Ev.fluctuationDissipationTheoremClosed Ev.greenKuboFormulaClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse