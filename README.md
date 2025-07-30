# 📱 Run Detox Tests on iOS Simulators using LambdaTest HyperExecute

This repository demonstrates how to execute [Detox](https://wix.github.io/Detox/) tests on iOS simulators using [LambdaTest HyperExecute](https://www.lambdatest.com/hyperexecute) — a smart, fast, and scalable test execution platform.

---

## 🚀 Prerequisites

- A valid [LambdaTest](https://www.lambdatest.com/) account
- LambdaTest **username** and **access key**
- [Node.js](https://nodejs.org/) installed
- [Detox CLI](https://wix.github.io/Detox/docs/introduction/getting-started/)
- Detox project configured for iOS simulators

---

## 🔧 Setup Instructions

### 1. Install HyperExecute CLI

Download the HyperExecute binary for your OS by following the official LambdaTest guide:

👉 [HyperExecute CLI Download & Installation](https://www.lambdatest.com/support/docs/hyperexecute-cli-run-tests-on-hyperexecute-grid/)

Make the binary executable:
```bash
chmod +x hyperexecute
```

### 2. Folder Structure

Place the `hyperexecute` binary in the **same directory** as your Detox tests and `YAML.yaml` config.

Example:
```
/my-detox-tests
├── e2e/
│   └── sample.test.js
├── node_modules/
├── package.json
├── hyperexecute        # <- CLI binary
└── YAML.yaml           # <- HyperExecute configuration
```

### 3. Create a YAML Configuration File

Here’s a sample `hyperexecute_simulator.yaml`

Adjust paths and configs as per your project requirements.

---

## ▶️ Run the Tests

Use the following command in your test directory:

```bash
./hyperexecute --user=<USERNAME> --key=<ACCESS_KEY> --config YAML.yaml
```

Replace:
- `<USERNAME>` → your LambdaTest username  
- `<ACCESS_KEY>` → your LambdaTest access key

---
## 📌 Notes

- Ensure the Detox project works **locally on iOS simulators** before running it on LambdaTest HyperExecute.
- This repo assumes Detox is already initialized and correctly configured for iOS.
- ⚠️ **This setup is intended for testing Detox on iOS simulators only.**  
  Real device execution is not supported in this configuration.
- 📦 **Payload must include the iOS app’s Xcode project or workspace** (`.xcodeproj` or `.xcworkspace`), along with all necessary source files and dependencies.
- 🛠️ **The app will be built and tested on LambdaTest’s macOS-based simulator infrastructure**, where Detox, Xcode, and related CLI tools are preinstalled.

---

## 📘 Resources

- [LambdaTest HyperExecute Docs](https://www.lambdatest.com/support/docs/introduction-to-hyperexecute/)
- [Detox Documentation](https://wix.github.io/Detox/)
- [LambdaTest CLI Help](https://www.lambdatest.com/support/)

---



## 🆘 Need Help?

Feel free to reach out to [LambdaTest Support](mailto:support@lambdatest.com) or open an issue in this repository.

## 🛠️ Already Installed on HyperExecute Mac/Simulator Hosts

The following setup is already done on the LambdaTest Mac environments:

```bash
# Install AppleSimUtils
arch -arm64 brew tap wix/brew
arch -arm64 env HOMEBREW_NO_AUTO_UPDATE=1 brew install applesimutils

# Install CLI tools
npm install react-native-cli --global
npm install detox-cli --global

# Install project dependencies
npm install "jest@^29" --save-dev
npm install detox --save-dev
npm install --save-dev @react-native-community/cli
```

---

## 🧹 Troubleshooting: Locale & Build Issues

If you face encoding or build-related issues, try the following steps:

```bash
# Clean Xcode Derived Data
rm -rf ~/Library/Developer/Xcode/DerivedData

# Set correct terminal locale (UTF-8 is required by CocoaPods)
export LANG=en_US.UTF-8

=============== JavaScriptCore is being moved ===============
JavaScriptCore has been extracted from react-native core
and will be removed in a future release. It can now be
installed from `@react-native-community/javascriptcore`
See: https://github.com/react-native-community/javascriptcore
=============================================================


==================== DEPRECATION NOTICE =====================
Calling `pod install` directly is deprecated in React Native
because we are moving away from Cocoapods toward alternative
solutions to build the project.
* If you are using Expo, please run:
`npx expo run:ios`
* If you are using the Community CLI, please run:
`yarn ios`
=============================================================
```

---
