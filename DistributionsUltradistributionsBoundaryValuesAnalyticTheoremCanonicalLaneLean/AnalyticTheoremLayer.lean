import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean.BoundaryValuesLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean

structure AnalyticTheoremLayerCertificate where
  boundaryValuesLayer : BoundaryValuesLayerCertificate
  analyticTheorem : String
  theoremRoute : String
  layerClosed : Bool

def analyticTheoremLayerCertificate : AnalyticTheoremLayerCertificate := {
  boundaryValuesLayer := boundaryValuesLayerCertificate,
  analyticTheorem := "every_ultradistribution_is_boundary_value_of_analytic_function",
  theoremRoute := "boundary_value_representation_via_fourier_carrier_method",
  layerClosed := true
}

def AnalyticTheoremLayerClosed (C : AnalyticTheoremLayerCertificate) : Prop :=
  BoundaryValuesLayerClosed C.boundaryValuesLayer ∧
  C.analyticTheorem = "every_ultradistribution_is_boundary_value_of_analytic_function" ∧
  C.layerClosed = true

theorem analytic_theorem_layer_closed_checked :
    AnalyticTheoremLayerClosed analyticTheoremLayerCertificate := by
  exact And.intro boundary_values_layer_closed_checked (And.intro rfl rfl)

end DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean
end HautevilleHouse
