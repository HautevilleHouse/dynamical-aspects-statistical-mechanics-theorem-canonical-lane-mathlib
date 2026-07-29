import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure StatisticalEnsemblesPackage where
  canonicalEnsemble : Prop
  microcanonicalEnsemble : Prop
  grandCanonicalEnsemble : Prop
  equivalenceOfEnsembles : Prop
  thermodynamicLimit : Prop

structure StatisticalEnsemblesEvidence (P : StatisticalEnsemblesPackage) where
  canonicalEnsembleClosed : P.canonicalEnsemble
  microcanonicalEnsembleClosed : P.microcanonicalEnsemble
  grandCanonicalEnsembleClosed : P.grandCanonicalEnsemble
  equivalenceOfEnsemblesClosed : P.equivalenceOfEnsembles
  thermodynamicLimitClosed : P.thermodynamicLimit

def StatisticalEnsemblesClosed (P : StatisticalEnsemblesPackage) : Prop :=
  P.canonicalEnsemble ∧ P.microcanonicalEnsemble ∧ P.grandCanonicalEnsemble ∧ P.equivalenceOfEnsembles ∧ P.thermodynamicLimit

theorem statistical_ensembles_closed_from_evidence (P : StatisticalEnsemblesPackage) (E : StatisticalEnsemblesEvidence P) :
    StatisticalEnsemblesClosed P := by
  exact And.intro E.canonicalEnsembleClosed
    (And.intro E.microcanonicalEnsembleClosed
      (And.intro E.grandCanonicalEnsembleClosed
        (And.intro E.equivalenceOfEnsemblesClosed E.thermodynamicLimitClosed)))

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse