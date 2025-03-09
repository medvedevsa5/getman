package cmd

import (
	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:  "getman ...",
	Long: "getman - the cli tool for api testing",
}

func Execute() error {
	return rootCmd.Execute()
}
