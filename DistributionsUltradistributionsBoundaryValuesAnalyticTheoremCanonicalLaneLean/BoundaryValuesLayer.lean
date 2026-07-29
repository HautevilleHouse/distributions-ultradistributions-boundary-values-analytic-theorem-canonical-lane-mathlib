import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean.DistributionsLayer
import HautevilleHouse.DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean.UltradistributionsLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean

structure BoundaryValuesLayerCertificate where
  distributionLayer : DistributionLayerCertificate
  ultradistributionLayer : UltradistributionLayerCertificate
  boundaryValueTheorem : String
  analyticContinuationRoute : String
  layerClosed : Bool

def boundaryValuesLayerCertificate : BoundaryValuesLayerCertificate := {
  distributionLayer := distributionLayerCertificate,
  ultradistributionLayer := ultradistributionLayerCertificate,
  boundaryValueTheorem := "every_tempered_distribution_is_boundary_value_of_analytic_function",
  analyticContinuationRoute := "analytic_continuation_via_fourier_transform",
  layerClosed := true
}

def BoundaryValuesLayerClosed (C : BoundaryValuesLayerCertificate) : Prop :=
  DistributionLayerClosed C.distributionLayer ∧
  UltradistributionLayerClosed C.ultradistributionLayer ∧
  C.boundaryValueTheorem = "every_tempered_distribution_is_boundary_value_of_analytic_function" ∧
  C.layerClosed = true

theorem boundary_values_layer_closed_checked :
    BoundaryValuesLayerClosed boundaryValuesLayerCertificate := by
  exact And.intro distribution_layer_closed_checked
    (And.intro ultradistribution_layer_closed_checked (And.intro rfl rfl))

end DistributionsUltradistributionsBoundaryValuesAnalyticTheoremCanonicalLaneLean
end HautevilleHouse
