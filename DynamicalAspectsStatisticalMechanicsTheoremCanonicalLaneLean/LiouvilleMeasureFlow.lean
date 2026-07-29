import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.GibbsEnsembleConstruction

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure LiouvilleMeasureFlowPackage {G : GibbsEnsemblePackage} (F : GibbsEnsemblePackage) where
  flow : Type u
  invariantMeasure : Prop
  incompressibility : Prop
  continuityEquation : Prop

structure LiouvilleMeasureFlowEvidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} (L : LiouvilleMeasureFlowPackage F) where
  invariantMeasureClosed : L.invariantMeasure
  incompressibilityClosed : L.incompressibility
  continuityEquationClosed : L.continuityEquation

def LiouvilleMeasureFlowClosed {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} (L : LiouvilleMeasureFlowPackage F) : Prop :=
  L.invariantMeasure ∧ L.incompressibility ∧ L.continuityEquation

theorem liouville_measure_flow_closed_from_evidence {G : GibbsEnsemblePackage} {F : GibbsEnsemblePackage} (L : LiouvilleMeasureFlowPackage F) (E : LiouvilleMeasureFlowEvidence L) :
    LiouvilleMeasureFlowClosed L := by
  exact And.intro E.invariantMeasureClosed (And.intro E.incompressibilityClosed E.continuityEquationClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse