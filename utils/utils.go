package utils

import (
	"os/user"
	"path/filepath"
	"strings"
)

func ExpandTildeInPath(path string) string {
	usr, _ := user.Current()
	home := usr.HomeDir
	if path == "~" {
		// In case of "~", which won't be caught by the "else if"
		path = home
	} else if strings.HasPrefix(path, "~/") {
		// Use strings.HasPrefix so we don't match paths like
		// "/something/~/something/"
		path = filepath.Join(home, path[2:])
	}

	return path
}
