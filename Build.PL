#!/usr/bin/env perl

use strict;
use warnings;
use Module::Build;

Module::Build->new(

	build_requires => {
		'Module::Build' => '0.36',
		'Test::Compile' => 0,
		'Test::Pod' => 0,
	},
	dist_abstract => 'Map MQTT topics to filesystem entries and vice versa',
	dist_name => 'mqtt-syncdir',
	dist_version_from => 'bin/mqttsyncdir-subscriber',
	license => 'perl',
	requires => {
		'perl' => '5.20.0',
		'File::Path' => 0,
		'File::Slurp' => 0,
		'Linux::Inotify2' => 0,
		'Net::MQTT::Simple' => 0,
		'YAML::XS' => 0,
	},
	sign => 1,

)->create_build_script();
