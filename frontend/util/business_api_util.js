export const fetchBusinesses = () => (
  $.ajax({
    method: "GET",
    url: `/api/businesses`
  })
);

export const fetchBusiness = (id) => (
    $.ajax({
      method: "GET",
      url: `/api/business/${id}`,
    })
  );
  
export const createBusiness = (business) => (
  $.ajax({
    method: "POST",
    url: `/api/businesses`,
    data: {business}
  })
);

export const updateBusiness = (business) => (
  $.ajax({
    method: "PATCH",
    url: `/api/business/${business.id}`,
    data: {business}
  })  
)

export const searchBusinesses = (search) => (
  $.ajax({
    method: "GET",
    url: `/api/search/query/querytext=${search}`
  })
)
  