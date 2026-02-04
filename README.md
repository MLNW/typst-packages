<!-- README based on https://github.com/othneildrew/Best-README-Template -->

<a name="readme-top"></a>

<div align="center">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

</div>

<div align="center">

<h3 align="center">Typst Packages & Templates</h3>
  <p align="center">
    A collection of reusable Typst packages and professional templates for document creation.
    <br />
  </p>
</div>

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#packages">Packages</a></li>
        <li><a href="#templates">Templates</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#usage">Usage</a></li>
      </ul>
    </li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

## About The Project

This repository contains a collection of Typst packages and templates designed to enhance document creation workflows.
Whether you're creating invoices, resumes, or working with advanced data structures, these tools provide robust and reusable solutions for your Typst projects.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Packages

- [SEPAY](packages/sepay/README.md): Generate EPC QR codes

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Templates

None, yet.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

[![Typst][typst-shield]][typst-url]
[![Moon][moon-shield]][moon-url]
[![Proto][proto-shield]][proto-url]
[![Bun][bun-shield]][bun-url]
[![Changesets][changesets-shield]][changesets-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

### Prerequisites

To use these packages and templates, you need:

- [Typst](https://typst.app/) - Install via your package manager or download from the official website

#### For Contributors

If you want to contribute to this repository, you'll need:

- [proto](https://moonrepo.dev/proto) - To install and manage the toolchain
- [rustup](https://rustup.rs/) - Used by moon to install Rust.

We use [moon](https://moonrepo.dev/moon) for package management.
Run `moon tasks` for a list of available tasks.

### Usage

#### Using Packages

Import packages in your Typst documents:

```typst
#import "@preview/package-name:version": *
```

For local development, you can import directly from the package directory:

```typst
#import "packages/package-name/src/lib.typ": *
```

#### Using Templates

Initialize a new document with a template:

```typst
#import "@preview/template-name:version": *

#show: template.with(
  // your configuration here
)
```

Refer to each package or template's README for detailed usage instructions and examples.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create.
Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request.
You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star!
Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the MIT License.
See [`LICENSE`](LICENSE) for more information.

Individual packages and templates may have their own licenses.
Please refer to the respective LICENSE files in each package/template directory.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[typst-url]: https://typst.app
[typst-shield]: https://img.shields.io/badge/Typst-239DAD?style=for-the-badge&logo=typst&logoColor=white
[bun-url]: https://bun.sh
[bun-shield]: https://img.shields.io/badge/Bun-000000?style=for-the-badge&logo=bun&logoColor=white
[moon-url]: https://moonrepo.dev
[moon-shield]: https://img.shields.io/badge/Moon-7C3AED?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMCIgZmlsbD0id2hpdGUiLz48L3N2Zz4=&logoColor=white
[proto-url]: https://moonrepo.dev/proto
[proto-shield]: https://img.shields.io/badge/Proto-16A34A?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTIgMkw0IDZWMThMMTIgMjJMMjAgMThWNkwxMiAyWiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=&logoColor=white
[changesets-url]: https://github.com/changesets/changesets
[changesets-shield]: https://img.shields.io/badge/Changesets-2563EB?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cmVjdCB4PSI0IiB5PSI0IiB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHJ4PSIyIiBmaWxsPSJ3aGl0ZSIvPjwvc3ZnPg==&logoColor=white
[contributors-shield]: https://img.shields.io/github/contributors/MLNW/typst-packages.svg?style=for-the-badge
[contributors-url]: https://github.com/MLNW/typst-packages/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/MLNW/typst-packages.svg?style=for-the-badge
[forks-url]: https://github.com/MLNW/typst-packages/network/members
[stars-shield]: https://img.shields.io/github/stars/MLNW/typst-packages.svg?style=for-the-badge
[stars-url]: https://github.com/MLNW/typst-packages/stargazers
[issues-shield]: https://img.shields.io/github/issues/MLNW/typst-packages.svg?style=for-the-badge
[issues-url]: https://github.com/MLNW/typst-packages/issues
[license-shield]: https://img.shields.io/github/license/MLNW/typst-packages.svg?style=for-the-badge
[license-url]: https://github.com/MLNW/typst-packages/blob/master/LICENSE
