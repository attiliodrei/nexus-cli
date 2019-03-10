package utils

import (
	"sort"
)

// Almost completely ripped off https://www.socketloop.com/tutorials/golang-natural-string-sorting-example

type Compare func(str1, str2 string) bool

func (cmp Compare) Sort(strs []string) {
	strSort := &strSorter{
		strs: strs,
		cmp:  cmp,
	}
	sort.Sort(strSort)
}

type strSorter struct {
	strs []string
	cmp  func(str1, str2 string) bool
}

func (s *strSorter) Len() int { return len(s.strs) }

func (s *strSorter) Swap(i, j int) { s.strs[i], s.strs[j] = s.strs[j], s.strs[i] }

func (s *strSorter) Less(i, j int) bool { return s.cmp(s.strs[i], s.strs[j]) }
