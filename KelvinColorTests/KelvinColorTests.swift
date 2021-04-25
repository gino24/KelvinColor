//
//  KelvinColorTests.swift
//  KelvinColorTests
//
//  Created by Sihao Lu on 8/24/17.
//  Copyright © 2017 Sihao. All rights reserved.
//

import XCTest
@testable import KelvinColor

class KelvinColorTests: XCTestCase {

	// testing values can be found at https://stackoverflow.com/questions/7229895/display-temperature-as-a-color-with-c
	func testKelvinColor() {
		assertColor(UIColor(temperature: 6500), red: 255, green: 249, blue: 253)
		assertColor(UIColor(temperature: 17500), red: 173, green: 200, blue: 255)
		assertColor(UIColor(temperature: 3000), red: 255, green: 180, blue: 107)
		assertColor(UIColor(temperature: 37500), red: 156, green: 188, blue: 255)
	}

	func testKelvinFromColor() {
		XCTAssertEqual(UIColor(red: 255, green: 249, blue: 253, alpha: 1.0).temperature, 6500, accuracy: 50)
		XCTAssertEqual(UIColor(red: 255, green: 203, blue: 104, alpha: 1.0).temperature, 2936, accuracy: 50)
		XCTAssertEqual(UIColor(red: 169, green: 229, blue: 255, alpha: 1.0).temperature, 19527, accuracy: 50)
		XCTAssertEqual(UIColor(red: 200, green: 209, blue: 168, alpha: 1.0).temperature, 5250, accuracy: 50)
	}

	private func assertColor(_ color: UIColor, red: CGFloat, green: CGFloat, blue: CGFloat) {
		var r: CGFloat = 0
		var g: CGFloat = 0
		var b: CGFloat = 0
		color.getRed(&r, green: &g, blue: &b, alpha: nil)
		XCTAssertEqual(r * 255, red, accuracy: 1.5)
		XCTAssertEqual(g * 255, green, accuracy: 1.5)
		XCTAssertEqual(b * 255, blue, accuracy: 1.5)
	}

}
