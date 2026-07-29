import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure FluctuationDissipationPackage where
  responseFunction : Type u
  fluctuationDissipationTheorem : Prop
  kuboFormula : Prop
  transportCoefficients : Prop

structure FluctuationDissipationEvidence (F : FluctuationDissipationPackage) where
  fluctuationDissipationTheoremClosed : F.fluctuationDissipationTheorem
  kuboFormulaClosed : F.kuboFormula
  transportCoefficientsClosed : F.transportCoefficients

def FluctuationDissipationClosed (F : FluctuationDissipationPackage) : Prop :=
  F.fluctuationDissipationTheorem ∧ F.kuboFormula ∧ F.transportCoefficients

theorem fluctuation_dissipation_closed_from_evidence (F : FluctuationDissipationPackage)
    (Ev : FluctuationDissipationEvidence F) : FluctuationDissipationClosed F := by
  exact And.intro Ev.fluctuationDissipationTheoremClosed (And.intro Ev.kuboFormulaClosed Ev.transportCoefficientsClosed)

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse