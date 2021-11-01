// Those are the types of the data expected based on the JSON structure
open Belt

type destination = {
  name: string,
  image: string,
  description: string,
  distance: string,
  travel: string,
}

type crew = {
  name: string,
  image: string,
  role: string,
  bio: string,
}

type techImages = {
  portrait: string,
  landscape: string,
}
type technology = {
  name: string,
  images: techImages,
}

type jsonResponse = {
  destinations: Map.String.t<array<destination>>,
  crew: Map.String.t<array<crew>>,
  technology: Map.String.t<array<technology>>,
}
