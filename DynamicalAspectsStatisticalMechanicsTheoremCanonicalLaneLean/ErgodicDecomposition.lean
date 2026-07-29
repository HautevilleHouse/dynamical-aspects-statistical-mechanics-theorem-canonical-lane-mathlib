import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.LiouvilleMeasureFlow

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure ErgodicDecompositionPackage {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} (L : LiouvilleMeasureFlowPackage F) where
  ergodicComponents : Type u
  invariantSets : Prop
  ergodicTheoremApplied : Prop
  decompositionUnique : Prop

structure ErgodicDecompositionEvidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} (E : ErgodicDecompositionPackage L) where
  invariantSetsClosed : E.invariantSets
  ergodicTheoremAppliedClosed : E.ergodicTheoremApplied
  decompositionUniqueClosed : E.decompositionUnique

def ErgodicDecompositionClosed {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} (E : ErgodicDecompositionPackage L) : Prop :=
  E.invariantSets ∧ E.ergodicTheoremApplied ∧ E.decompositionUnique

theorem ergodic_decomposition_closed_from_evidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} {L : LiouvilleMeasureFlowPackage F} (E : ErgodicDecompositionPackage L) (Ev : ErgodicDecompositionEvidence E) :
    ErgodicDecompositionClosed E := by
  exact And.intro Ev.invariantSetsClosed (And.intro Ev.ergodicTheoremAppliedClosed Ev.decompositionUniqueClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse