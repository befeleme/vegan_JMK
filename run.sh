#!/bin/bash
wget -O mlekomaty.json  'http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea%283600051684%29%2D%3E%2EsearchArea%3B%28node%5B%22amenity%22%3D%22vending%5Fmachine%22%5D%5B%22vending%22%7E%22milk%22%5D%28area%2EsearchArea%29%3Bway%5B%22amenity%22%3D%22vending%5Fmachine%22%5D%5B%22vending%22%7E%22milk%22%5D%28area%2EsearchArea%29%3Brelation%5B%22amenity%22%3D%22vending%5Fmachine%22%5D%5B%22vending%22%7E%22milk%22%5D%28area%2EsearchArea%29%3B%29%3Bout%3B%3E%3Bout%20skel%20qt%3B%0A'

