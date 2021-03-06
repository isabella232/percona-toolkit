// Package models contains the types for schema 'public'.
package models

// Code generated by xo. DO NOT EDIT.

import (
	"database/sql"
	"time"
)

// Cluster info
type ClusterInfo struct {
	Usename        string         // usename
	Time           time.Time      // time
	ClientAddr     sql.NullString // client_addr
	ClientHostname sql.NullString // client_hostname
	Version        string         // version
	Started        time.Time      // started
	IsSlave        bool           // is_slave
}

// GetClusterInfos runs a custom query, returning results as ClusterInfo.
func GetClusterInfos(db XODB) ([]*ClusterInfo, error) {
	var err error

	// sql query
	sqlstr := `SELECT usename, now() AS "Time", ` +
		`client_addr, ` +
		`client_hostname, ` +
		`version() AS version, ` +
		`pg_postmaster_start_time() AS Started, ` +
		`pg_is_in_recovery() AS "Is_Slave" ` +
		`FROM pg_stat_activity ` +
		`WHERE pid = pg_backend_pid()`

	// run query
	XOLog(sqlstr)
	q, err := db.Query(sqlstr)
	if err != nil {
		return nil, err
	}
	defer q.Close()

	// load results
	res := []*ClusterInfo{}
	for q.Next() {
		ci := ClusterInfo{}

		// scan
		err = q.Scan(&ci.Usename, &ci.Time, &ci.ClientAddr, &ci.ClientHostname, &ci.Version, &ci.Started, &ci.IsSlave)
		if err != nil {
			return nil, err
		}

		res = append(res, &ci)
	}

	return res, nil
}
